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
  int? get id;
  bool get isAdmin;
  File? get photo;

  static UserState initial() => UserState(
        (b) => b
          ..name = ''
          ..group = ''
          ..course = ''
          ..id = null
          ..photo = null
          ..isAdmin = false,
      );
}
