import 'package:built_value/built_value.dart';
import 'package:flutter_application_1/models/school/room.dart';
import 'package:flutter_application_1/models/school/student.dart';

part 'school_state.g.dart';

abstract class SchoolState implements Built<SchoolState, SchoolStateBuilder> {
  factory SchoolState([void Function(SchoolStateBuilder b) updates]) =
      _$SchoolState;

  SchoolState._();

  List<Room> get rooms;
  List<Student> get students;

  factory SchoolState.initial() => SchoolState(
        (b) => b
          ..rooms = []
          ..students = [],
      );
}
