import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/store/app_state.dart';

class SignAction extends Action<AppState> {
  SignAction({
    required this.isStudent,
    required this.fullName,
    this.group,
    this.course,
  });

  final bool isStudent;
  final String fullName;
  final String? group;
  final String? course;

  @override
  Operation get operationKey => Operation.login;

  @override
  Future<AppState> reduce() async {
    return state.rebuild((s) {
      s
        ..user.isAdmin = !isStudent
        ..user.name = fullName
        ..user.course = course
        ..user.group = group;
    });
  }
}
