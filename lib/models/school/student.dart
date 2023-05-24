import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  factory Student({
    String? dataOfBirth,
    String? roomNumber,
    int? course,
    required String specialty,
    required String fullName,
    String? floor,
    required int? prise,
    required int? paid,
  }) = _Student;

  const Student._();

  factory Student.fromJson(Map<String, dynamic> json) => Student(
      course: json['Курс'],
      specialty: json['Специальность'],
      fullName: json['ФИО'],
      prise: json['Начисление'],
      paid: json['Оплата']);

  factory Student.fromSnapshot(DataSnapshot json) => Student(
        roomNumber: json.child('Комнанта').value.toString(),
        course: json.child('Курс').value as int?,
        dataOfBirth: json.child('Год рождения').value.toString(),
        floor: json.child('Этаж').value.toString(),
        fullName: json.child('ФИО').value.toString(),
        specialty: json.child('Специальность').value.toString(),
        prise: json.child('Начисление').value as int?,
        paid: json.child('Оплата').value as int?,
      );
}
