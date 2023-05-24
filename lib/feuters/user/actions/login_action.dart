import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_1/convertes/extensions.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/models/school/student.dart';
import 'package:flutter_application_1/models/user/user.dart';
import 'package:flutter_application_1/store/app_state.dart';

class LoginAction extends Action<AppState> {
  LoginAction({
    required this.user,
    required this.students,
  });

  final DataSnapshot user;
  final List<Student> students;

  @override
  Operation get operationKey => Operation.login;

  @override
  Future<AppState?> reduce() async {
    final currentUser = User.fromSnapshot(user);
    final currentStudent =
        students.firstWhereOrNull((element) => element.fullName == currentUser.name);

    return state.rebuild((s) {
      s
        ..user.isAdmin = !currentUser.isStudent
        ..user.name = currentUser.name
        ..user.course = currentUser.course
        ..user.dataOfBirth = currentStudent?.dataOfBirth
        ..user.floor = currentStudent?.floor
        ..user.specialty = currentStudent?.specialty
        ..user.paid = currentStudent?.paid
        ..user.prise = currentStudent?.prise
        ..user.roomNumber = currentStudent?.roomNumber
        ..user.group = currentUser.group;
    });
  }
}
