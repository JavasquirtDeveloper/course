import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String name,
    required String course,
    required String group,
    required bool isStudent,
    //  int? id,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromSnapshot(DataSnapshot json) => User(
        name: json.child('name').value.toString(),
        course: json.child('course').value.toString(),
        group: json.child('group').value.toString(),
        // id: json.child('id').value as int,
        isStudent: json.child('is_student').value as bool? ?? false,
      );
}
