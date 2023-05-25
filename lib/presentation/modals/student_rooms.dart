import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/models/school/student.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_application_1/widgets/input.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StudentRooms extends HookWidget {
  const StudentRooms({super.key});

  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance.ref('student');
    const separator = SizedBox(height: 8);
    final controller = useTextEditingController();
    final nameController = useTextEditingController();
    final newRoomController = useTextEditingController();

    getStudentsLength() async {
      final students = await database.get();

      return students.children.length.toString();
    }

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        color: Colors.amber,
        child: Column(
          children: [
            DefaultButton(
                text: 'Добавить студента',
                onPressed: () async {
                  try {
                    getStudentsLength()
                        .then((value) => database.child(value).set({
                              'Комнанта': int.parse(newRoomController.text),
                              'ФИО': nameController.text,
                            }));
                  } catch (e) {
                    appRouter.openBottomSheet(
                        context: context, child: Text('Ошибка'));
                  } finally {
                    newRoomController.text = '';
                    nameController.text = '';
                  }
                }),
            separator,
            SearchInputField(
              controller: nameController,
              hint: 'ФИО',
            ),
            separator,
            SearchInputField(
              controller: newRoomController,
              hint: 'Комната',
            ),
            separator,
            separator,
            Expanded(
              child: FirebaseAnimatedList(
                  query: database,
                  itemBuilder: (context, snapshot, animation, index) {
                    final json = snapshot;
                    final student = Student.fromSnapshot(json);

                    return InkWell(
                      onTap: () => appRouter.openBottomSheet(
                        context: context,
                        child: Container(
                          color: Colors.black12,
                          padding: const EdgeInsets.symmetric(horizontal: 34),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Изменить команату для ${student.fullName}'),
                              separator,
                              SearchInputField(
                                hint: 'Номер комнаты',
                                controller: controller,
                              ),
                              separator,
                              DefaultButton(
                                  text: 'Изменить',
                                  onPressed: () async {
                                    database
                                        .child(index.toString())
                                        .update({'Комнанта': controller.text});
                                  })
                            ],
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          separator,
                          Text(' ${student.fullName}'),
                          separator,
                          Text('Номер комнаты: ${student.roomNumber}'),
                          separator,
                          const Divider(height: 3)
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
