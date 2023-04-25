import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  factory Room({
    required String roomNumber,
    required String freeBeds,
    required String busyBeds,
  }) = _Room;

  const Room._();

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        roomNumber: json['Комната'],
        freeBeds: json['Кроватей занято'],
        busyBeds: json['Кроватей свободно'],
      );

  factory Room.fromSnapshot(DataSnapshot json) => Room(
        roomNumber: json.child('Комната').value.toString(),
        freeBeds: json.child('Кроватей занято').value.toString(),
        busyBeds: json.child('Кроватей свободно').value.toString(),
      );
}
