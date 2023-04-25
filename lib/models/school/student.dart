import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  factory Student({
    required String dataOfBirth,
    required String roomNumber,
    required String course,
    required String specialty,
    required String fullName,
    required String floor,
  }) = _Student;

  const Student._();

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);

  factory Student.fromSnapshot(DataSnapshot json) => Student(
        roomNumber: json.child('Комнанта').value.toString(),
        course: json.child('Курс').value.toString(),
        dataOfBirth: json.child('Год рождения').value.toString(),
        floor: json.child('Этаж').value.toString(),
        fullName: json.child('ФИО').value.toString(),
        specialty: json.child('Специальность').value.toString(),
      );
}
