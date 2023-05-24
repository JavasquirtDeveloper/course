library geolocation_state;

import 'dart:io';

import 'package:built_value/built_value.dart';

part 'user_state.g.dart';

abstract class UserState implements Built<UserState, UserStateBuilder> {
  factory UserState([void Function(UserStateBuilder b) updates]) = _$UserState;

  UserState._();

  String get name;
  String? get group;
  String? get course;
  String get id;
  bool get isAdmin;
  File? get photo;
  String? get dataOfBirth;
  String? get roomNumber;
  String? get specialty;
  String? get floor;
  int? get prise;
  int? get paid;

  static UserState initial() => UserState(
        (b) => b
          ..name = ''
          ..group = ''
          ..course = ''
          ..isAdmin = false
          ..id = '0'
          ..photo = null
          ..isAdmin = false
          ..dataOfBirth = null
          ..roomNumber = null
          ..specialty = null
          ..floor = null
          ..prise = null
          ..paid = null,
      );
}
