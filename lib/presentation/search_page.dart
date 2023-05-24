import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/school/student.dart';
import 'package:flutter_application_1/widgets/input.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance.ref('student');
    final searchString = useState('');

    const separator = SizedBox(height: 8);

    return Scaffold(
      body: Container(
          color: Colors.pink,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 70),
                SearchInputField(
                  hint: 'ФИО, группа, номер комнаты',
                  onChanged: (v) => searchString.value = v.toLowerCase(),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                      color: Colors.white,
                      child: FirebaseAnimatedList(
                          query: database,
                          itemBuilder: (context, snapshot, animation, index) {
                            final json = snapshot;
                            final student = Student.fromSnapshot(json);
                            final debt =
                                (student.prise ?? 0) - (student.paid ?? 0);

                            return (student.fullName
                                        .toLowerCase()
                                        .contains(searchString.value) ||
                                    student.roomNumber!
                                        .contains(searchString.value))
                                ? Column(
                                    children: [
                                      separator,
                                      Text(' ${student.fullName}'),
                                      separator,
                                      Text(
                                          'Номер комнаты: ${student.roomNumber}'),
                                      separator,
                                      Text('${student.course ?? '1'} курс'),
                                      separator,
                                      Text(
                                          '${student.dataOfBirth} года рождения'),
                                      separator,
                                      Text(
                                          'Специальность ${student.specialty}'),
                                      separator,
                                      Text(
                                          'Долг: ${debt <= 0 ? 'Оплачено' : debt} '),
                                      const Divider(height: 3)
                                    ],
                                  )
                                : const SizedBox();
                          })),
                ),
                const SizedBox(height: 50),
              ],
            ),
          )),
    );
  }
}
