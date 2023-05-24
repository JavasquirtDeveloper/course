import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String name,
    required String? course,
    required String? group,
    required bool isStudent,
    required bool personalInfo,
    required String id,
    String? dataOfBirth,
    String? roomNumber,
    String? specialty,
    String? floor,
    int? prise,
    int? paid,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromSnapshot(DataSnapshot json) => User(
        name: json.child('name').value.toString(),
        course: json.child('course').value.toString(),
        group: json.child('group').value.toString(),
        id: json.child('id').value.toString(),
        isStudent: json.child('is_student').value as bool? ?? false,
        personalInfo: json.child('personal_info').value as bool? ?? false,
      );
}
