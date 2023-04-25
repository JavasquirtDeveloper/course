import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/feuters/user/actions/get_user_id_action.dart';
import 'package:flutter_application_1/feuters/user/actions/login_action.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/presentation/hooks/dispatcher_hook.dart';
import 'package:flutter_application_1/presentation/main_page.dart';
import 'package:flutter_application_1/store/global_state_hook.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_application_1/widgets/input.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance.ref('users');
    final userId = useGlobalState((s) => s.user.id);
    final isStudent = useState(false);
    final dispatcher = useDispatcher();
    final loginController = useTextEditingController();
    final passController = useTextEditingController();
    final nameController = useTextEditingController();
    final loginFocus = useFocusNode();
    final passFocus = useFocusNode();
    final loginText = useState('');
    final passText = useState('');

    useEffect(
      () {
        dispatcher(GetUserIdAction());

        return null;
      },
      [],
    );

    final fieldsIsEmpty =
        loginText.value.length < 6 || passText.value.length < 6;

    onPress() {
      database
          .child('/$userId')
          .set({
            'login': loginController.text,
            'pass': passController.text,
            'is_student': isStudent.value,
            'name': nameController.text,
          })
          .then((value) => dispatcher(LoginAction(
              isStudent: isStudent.value, fullName: nameController.text)))
          .then((value) => appRouter.startWith(const MainPage()));
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
            Center(
                child: DefaultButton(
                    text: 'Зарегистрироваться',
                    onPressed: fieldsIsEmpty ? null : onPress))
          ],
        ),
      ),
    );
  }
}
