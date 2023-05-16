import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/feuters/user/actions/login_action.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/user/user.dart';
import 'package:flutter_application_1/presentation/hooks/dispatcher_hook.dart';
import 'package:flutter_application_1/presentation/main_page.dart';
import 'package:flutter_application_1/widgets/default_button.dart';
import 'package:flutter_application_1/widgets/input.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dispatcher = useDispatcher();
    final database = FirebaseDatabase.instance.ref('users');
    users() async {
      final getUsers = await database.onValue
          .map((event) => User.fromSnapshot(event.snapshot))
          .toList();

      print(getUsers);
    }

    useEffect(
      () {
        users();
        return null;
      },
      [],
    );

    final isPersonalInfo = useState(false);
    final isGeolocation = useState(false);
    final loginController = useTextEditingController();
    final passController = useTextEditingController();
    final isFullInputs = useState(
        loginController.text.isNotEmpty && passController.text.isNotEmpty);

    // Future<void> onAllowGeolocation() async {
    //   isLocationAllowed().then((isAllowed) {
    //     if (isAllowed) {
    //       onAllowGeolocation();
    //     }
    //   });
    // }

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
              hint: 'Номер зачетки/номер телефона',
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
              onPressed: () => users(),
            )),
            Center(
              child: DefaultButton(
                  text: 'Войти',
                  onPressed: () {
                    dispatcher(LoginAction(
                      isStudent: false,
                      fullName: loginController.text,
                    )).then((value) => appRouter.startWith(const MainPage()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
