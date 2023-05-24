import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feuters/user/actions/login_action.dart';
import 'package:flutter_application_1/models/school/student.dart';
import 'package:flutter_application_1/presentation/calendar_page.dart';
import 'package:flutter_application_1/presentation/hooks/dispatcher_hook.dart';
import 'package:flutter_application_1/presentation/menu_page.dart';
import 'package:flutter_application_1/presentation/search_page.dart';
import 'package:flutter_application_1/store/global_state_hook.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dispatcher = useDispatcher();
    final isAdmin = useGlobalState((s) => s.user.isAdmin);
    final user = FirebaseAuth.instance.currentUser;
    final database =
        FirebaseDatabase.instance.ref('users').child(user?.uid ?? '');

    Future getUser() async {
      final user = await database.onValue.first;
      final getStudents = await FirebaseDatabase.instance.ref('student').get();
      final students =
          getStudents.children.map((e) => Student.fromSnapshot(e)).toList();

      dispatcher(LoginAction(user: user.snapshot, students: students));
    }

    useEffect(
      () {
        getUser();

        return null;
      },
      [],
    );

    final index = useState(0);
    final tabs = [const CalendarPage(), const SearchPage(), const MenuPage()];

    return Scaffold(
      body: IndexedStack(
        index: index.value,
        children: tabs,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          _BarIcon(icon: Icons.calendar_month, onTap: () => index.value = 0),
          isAdmin
              ? _BarIcon(icon: Icons.search, onTap: () => index.value = 1)
              : const SizedBox(),
          _BarIcon(icon: Icons.menu, onTap: () => index.value = 2),
        ]),
      ),
    );
  }
}

class _BarIcon extends StatelessWidget {
  const _BarIcon({
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            )));
  }
}
