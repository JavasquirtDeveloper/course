import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/presentation/hooks/dispatcher_hook.dart';
import 'package:flutter_application_1/presentation/main_page.dart';
import 'package:flutter_application_1/presentation/register_page.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_application_1/widgets/input.dart';
import 'package:flutter_application_1/widgets/text_with_box.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dispatcher = useDispatcher();

    final isPersonalInfo = useState(false);
    final isGeolocation = useState(false);
    final loginController = useTextEditingController();
    final passController = useTextEditingController();

    // Future<void> onAllowGeolocation() async {
    //   isLocationAllowed().then((isAllowed) {
    //     if (isAllowed) {
    //       onAllowGeolocation();
    //     }
    //   });
    // }

    Future signIn() async {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: loginController.text,
              password: passController.text,
            )
            .then((value) => appRouter.goTo(const MainPage()));
      } catch (e) {
        appRouter.openBottomSheet(
            context: context,
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Ошибка, проверьте логин или пароль'),
            ));
      }
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text('Login'),
            const SizedBox(height: 10),
            SearchInputField(
              hint: 'Email',
              controller: loginController,
            ),
            const SizedBox(height: 10),
            const Text('Password'),
            const SizedBox(height: 10),
            SearchInputField(controller: passController),
            const SizedBox(height: 50),
            TextWithBox(
              text: 'Согласие на обработку песональных данных',
              value: isPersonalInfo.value,
              onChange: (v) => isPersonalInfo.value = v ?? false,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    'Согласие на обработку местоположения',
                    maxLines: 2,
                  ),
                ),
                Checkbox(
                    value: isGeolocation.value,
                    onChanged: (v) => isGeolocation.value = v ?? false)
              ],
            ),
            const SizedBox(height: 10),
            Center(
                child: DefaultButton(
              text: 'Регистрация',
              onPressed: () => appRouter.goTo(const RegisterPage()),
            )),
            Center(
              child: DefaultButton(
                text: 'Войти',
                onPressed: signIn,
              ),
            )
          ],
        ),
      ),
    );
  }
}
