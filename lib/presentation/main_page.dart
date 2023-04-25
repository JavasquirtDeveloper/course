import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/calendar_page.dart';
import 'package:flutter_application_1/presentation/home_page.dart';
import 'package:flutter_application_1/presentation/menu_page.dart';
import 'package:flutter_application_1/presentation/search_page.dart';
import 'package:flutter_application_1/store/global_state_hook.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isAdmin = useGlobalState((s) => s.user.isAdmin);
    final index = useState(0);
    final tabs = [
      const HomePage(),
      const CalendarPage(),
      const SearchPage(),
      const MenuPage()
    ];

    return Scaffold(
      body: IndexedStack(
        index: index.value,
        children: tabs,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          BarIcon(icon: Icons.home, onTap: () => index.value = 0),
          BarIcon(icon: Icons.calendar_month, onTap: () => index.value = 1),
          isAdmin
              ? BarIcon(icon: Icons.search, onTap: () => index.value = 2)
              : const SizedBox(),
          BarIcon(icon: Icons.menu, onTap: () => index.value = 3),
        ]),
      ),
    );
  }
}

class BarIcon extends StatelessWidget {
  const BarIcon({
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
