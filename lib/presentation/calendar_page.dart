import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/school/event_data.dart';
import 'package:flutter_application_1/store/global_state_hook.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends HookWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isAdmin = useGlobalState((s) => s.user.isAdmin);
    final now = DateTime.now();
    final firstDay = useState(now);
    final lastDay = useState(now);
    final selectedDays = useState<List<String?>>([]);
    final defaultDateFormat = DateFormat('MM-dd-yyyy');
    final database = FirebaseDatabase.instance.ref('degurstvo');
    final currentMoth = List<DateTime>.generate(
        32,
        (i) => DateTime.utc(
              firstDay.value.year,
              firstDay.value.month,
            ).add(Duration(days: i)));
    onAddDays() {
      selectedDays.value = currentMoth
          .map(
            (e) => e.isAfter(
                      isAdmin
                          ? DateTime(firstDay.value.year, firstDay.value.month)
                          : firstDay.value,
                    ) &&
                    e.isBefore(
                      isAdmin
                          ? DateTime(
                              lastDay.value.year, lastDay.value.month + 1, 0)
                          : lastDay.value,
                    )
                ? defaultDateFormat.format(e)
                : null,
          )
          .toList()
        ..addAll([
          defaultDateFormat.format(firstDay.value),
          defaultDateFormat.format(lastDay.value)
        ]);
    }

    useEffect(
      () {
        onAddDays();

        return null;
      },
      [firstDay.value],
    );

    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TableCalendar(
                currentDay: firstDay.value,
                focusedDay: firstDay.value,
                rangeStartDay: firstDay.value,
                rangeEndDay: lastDay.value,
                pageJumpingEnabled: true,
                firstDay: DateTime.utc(2023, now.month, 1),
                lastDay: DateTime.utc(2023, 12, 31),
                onDaySelected: (selectDay, focusDay) {
                  firstDay.value = isAdmin
                      ? DateTime(focusDay.year, focusDay.month, 1)
                      : focusDay;
                  lastDay.value = isAdmin
                      ? DateTime(focusDay.year, focusDay.month + 1, 0)
                      : focusDay.add(const Duration(days: 6));
                },
              ),
            ),
            Expanded(
              child: FirebaseAnimatedList(
                  query: database,
                  itemBuilder: (context, snapshot, animation, index) {
                    final json = snapshot;
                    final day = EventData.fromSnapshot(json);
                    final isDisplayDate = selectedDays.value.contains(day.data);

                    return isDisplayDate
                        ? Column(
                            children: [
                              Text('График дежурства на ${day.data}'),
                              const SizedBox(height: 15),
                              Text('2 Этаж: Комната№ ${day.second}'),
                              const SizedBox(height: 5),
                              Text('3 Этаж: Комната№ ${day.third}'),
                              const SizedBox(height: 5),
                              Text('4 Этаж: Комната№ ${day.four}'),
                              const SizedBox(height: 5),
                              Text('5 Этаж: Комната№ ${day.five}'),
                              const SizedBox(height: 15),
                            ],
                          )
                        : const SizedBox();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
