import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/store/app_state.dart';

class LoginAction extends Action<AppState> {
  LoginAction({
    required this.isStudent,
    required this.fullName,
  });

  final bool isStudent;
  final String fullName;

  @override
  Operation get operationKey => Operation.login;

  @override
  Future<AppState> reduce() async {
    return state.rebuild((s) {
      s
        ..user.isAdmin = !isStudent
        ..user.name = fullName;
    });
  }
}
