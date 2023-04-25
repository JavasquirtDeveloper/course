import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends HookWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final focusedDay = useState(now);

    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TableCalendar(
                currentDay: focusedDay.value,
                focusedDay: focusedDay.value,
                onPageChanged: (focusDay) => focusedDay.value = focusDay,
                firstDay: DateTime.utc(2023, now.month, 1),
                lastDay: DateTime.utc(2023, 12, 31),
                onDaySelected: (selectDay, focusDay) =>
                    focusedDay.value = focusDay,
              ),
            )
          ],
        ),
      ),
    );
  }
}
