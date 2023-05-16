import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/presentation/modals/about_many.dart';
import 'package:flutter_application_1/presentation/modals/about_sharaga.dart';
import 'package:flutter_application_1/presentation/modals/settings_modal.dart';
import 'package:flutter_application_1/store/global_state_hook.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MenuPage extends HookWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = useGlobalState((s) => s.user);

    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 70),
              user.photo != null
                  ? CircleAvatar(
                      backgroundImage: Image.file(user.photo!).image,
                      maxRadius: 50,
                    )
                  : const CircleAvatar(
                      maxRadius: 50,
                      child: Text('Нет фото'),
                    ),
              const SizedBox(height: 30),
              Center(
                  child: Text('${user.name} ' '${user.group } ''${user.course}')),
              const SizedBox(height: 30),
              DefaultButton(
                text: 'Информация об общежитии',
                onPressed: () => appRouter.openBottomSheet(
                    context: context,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Проживает: 228 учеников'),
                        SizedBox(height: 30),
                      ],
                    )),
              ),
              const SizedBox(height: 15),
              DefaultButton(
                text: 'Информация о комнатах',
                onPressed: () => appRouter.openBottomSheet(
                    context: context, child: const AboutSharaga()),
              ),
              const SizedBox(height: 15),
              DefaultButton(
                text: 'Оплата общежития',
                onPressed: () => appRouter.openBottomSheet(
                  context: context,
                  child: user.isAdmin
                      ? const AboutManyForTeacher()
                      : const AboutMany(),
                ),
              ),
              const SizedBox(height: 15),
              DefaultButton(
                text: 'Настройки',
                onPressed: () => appRouter.openBottomSheet(
                  context: context,
                  child: const SettingsModal(),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
