// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/feuters/user/actions/create_user_action.dart';
import 'package:flutter_application_1/models/user/user.dart';
import 'package:flutter_application_1/presentation/hooks/dispatcher_hook.dart';
import 'package:flutter_application_1/presentation/main_page.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_application_1/widgets/input.dart';
import 'package:flutter_application_1/widgets/text_with_box.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isStudent = useState(false);
    final isPersonalInfo = useState(false);
    final dispatcher = useDispatcher();
    final loginController = useTextEditingController();
    final passController = useTextEditingController();
    final nameController = useTextEditingController();
    final groupController = useTextEditingController();
    final courseController = useTextEditingController();
    final loginFocus = useFocusNode();
    final passFocus = useFocusNode();
    final loginText = useState('');
    final passText = useState('');

    final fieldsIsEmpty =
        loginText.value.length < 6 || passText.value.length < 6;

    signUp() {
      try {
        dispatcher(CreateUserAction(
          email: loginController.text,
          pass: passController.text,
          user: User(
            name: nameController.text,
            course: isStudent.value ? groupController.text : null,
            group: isStudent.value ? groupController.text : null,
            isStudent: isStudent.value,
            personalInfo: isPersonalInfo.value,
          ),
        )).then((value) => appRouter.startWith(const MainPage()));
      } catch (e) {
        appRouter.openBottomSheet(
            context: context, child: const Text('Ошибка'));
      }
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: ListView(
          children: [
            const SizedBox(height: 100),
            SearchInputField(
              hint: 'ФИО',
              controller: nameController,
            ),
            const SizedBox(height: 10),
            const Text('Login'),
            const SizedBox(height: 10),
            SearchInputField(
              hint: 'Номер зачетки/номер телефона',
              controller: loginController,
              focusNode: loginFocus,
              onChanged: (value) => loginText.value = value,
            ),
            const SizedBox(height: 10),
            const Text('Password'),
            const SizedBox(height: 10),
            SearchInputField(
              controller: passController,
              focusNode: passFocus,
              onChanged: (value) => passText.value = value,
            ),
            const SizedBox(height: 50),
            TextWithBox(
              text: 'Я студент',
              value: isStudent.value,
              onChange: (v) => isStudent.value = v ?? false,
            ),
            TextWithBox(
              text: 'Согласие на обработку персональных данных',
              value: isPersonalInfo.value,
              onChange: (v) => isPersonalInfo.value = v ?? false,
            ),
            if (isStudent.value) ...[
              const SizedBox(height: 10),
              SearchInputField(
                controller: groupController,
                hint: 'Группа',
              ),
              const SizedBox(height: 10),
              SearchInputField(
                controller: courseController,
                hint: 'Курс',
              ),
              const SizedBox(height: 10),
            ],
            Center(
                child: DefaultButton(
                    text: 'Зарегистрироваться',
                    onPressed: fieldsIsEmpty ? null : signUp))
          ],
        ),
      ),
    );
  }
}
