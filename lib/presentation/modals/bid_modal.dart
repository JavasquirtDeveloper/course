import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/models/school/bid.dart';
import 'package:flutter_application_1/store/global_state_hook.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_application_1/widgets/input.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BidModal extends HookWidget {
  const BidModal(this.forTeacher, {super.key});

  final bool forTeacher;

  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance.ref('bids');
    final user = useGlobalState((s) => s.user);

    final title = useTextEditingController();
    final description = useTextEditingController();

    Future send() async {
      final databaseLength = await database.get();
      try {
        database.child(databaseLength.children.length.toString()).set({
          'fromName': user.name,
          'fromId': user.id,
          'type': title.text,
          'description': description.text,
        }).then((value) {
          title.text = '';
          description.text = '';
          appRouter.openBottomSheet(
              context: context, child: const Text('Готово'));
        });
      } catch (e) {
        appRouter.openBottomSheet(
            context: context, child: const Text('Ощибка'));
      }
    }

    if (forTeacher) {
      return FirebaseAnimatedList(
          query: database,
          itemBuilder: (context, snapshot, animation, index) {
            final json = snapshot;
            final bid = Bid.fromSnapshot(json);

            return Column(
              children: [
                Text('Заявка от  ${bid.fromName}'),
                const SizedBox(height: 15),
                Text('Тип заявки:  ${bid.type}'),
                const SizedBox(height: 15),
                Text('Описание:  ${bid.description}'),
                const SizedBox(height: 15),
                const Divider(height: 3),
                const SizedBox(height: 15),
              ],
            );
          });
    }

    return Flexible(
      child: ColoredBox(
        color: Colors.black38,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            children: [
              const SizedBox(height: 15),
              SearchInputField(
                controller: title,
                hint: 'Тип',
              ),
              const SizedBox(height: 15),
              SearchInputField(
                controller: description,
                minLines: 7,
                maxLines: 10,
                hint: 'Описание',
              ),
              const SizedBox(height: 15),
              DefaultButton(
                text: 'Отправить',
                onPressed: send,
              )
            ],
          ),
        ),
      ),
    );
  }
}
