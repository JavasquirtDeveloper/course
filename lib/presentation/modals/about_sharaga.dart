import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/school/room.dart';

class AboutSharaga extends StatelessWidget {
  const AboutSharaga({super.key});

  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance.ref('rooms');

    return FirebaseAnimatedList(
        query: database,
        itemBuilder: (context, snapshot, animation, index) {
          final json = snapshot;
          final message = Room.fromSnapshot(json);

          return int.parse(message.freeBeds) > 0
              ? Column(
                  children: [
                    const SizedBox(height: 8),
                    Text('Номер комнаты: ${message.roomNumber}'),
                    const SizedBox(height: 8),
                    Text('Свободных кроватей: ${message.freeBeds}'),
                    const Divider(
                      height: 3,
                    )
                  ],
                )
              : const SizedBox();
        });
  }
}
