import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AboutRooms extends HookWidget {
  const AboutRooms({super.key});

  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance.ref('оплата группы');
    const separator = SizedBox(height: 8);

    return Container(
        color: Colors.white,
        child: FirebaseAnimatedList(
            query: database,
            itemBuilder: (context, snapshot, animation, index) {
              final json = snapshot;

              return ExpansionTile(
                title: Text(json.key ?? ''),
                children: json.children.map((e) {
                  // final student = e.ref.get();
                  print(e.value);
                  return ExpansionTile(
                    title: Text(e.key ?? ''),

                    // children: students.map((student) {
                    //   // final debt = (student.prise ?? 0) - (student.paid ?? 0);

                    //   return Column(
                    //     children: [
                    //       separator,
                    //       Text(' ${student.fullName}'),
                    //       separator,
                    //       Text('Номер комнаты: ${student.roomNumber}'),
                    //       separator,
                    //       Text('${student.course ?? '1'} курс'),
                    //       separator,
                    //       Text('${student.dataOfBirth} года рождения'),
                    //       separator,
                    //       Text('Специальность ${student.specialty}'),
                    //       separator,
                    //       // Text('Долг: ${debt <= 0 ? 'Оплачено' : debt} '),
                    //       const Divider(height: 3)
                    //     ],
                    //   );
                    // }).toList(),
                  );
                }).toList(),
              );
            }));
  }
}