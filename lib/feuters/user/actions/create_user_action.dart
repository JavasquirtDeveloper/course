import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/models/user/user.dart';
import 'package:flutter_application_1/services/admin_services.dart';
import 'package:flutter_application_1/store/app_state.dart';
import 'package:get_it/get_it.dart';

class CreateUserAction extends Action<AppState> {
  CreateUserAction({
    required this.user,
    required this.email,
    required this.pass,
  });

  final String email;
  final String pass;
  final User user;

  @override
  Operation get operationKey => Operation.changePhoto;

  @override
  Future<AppState?> reduce() async {
    final authService = GetIt.I.get<AdminService>();

    await authService.createUser(email, pass, user);

    return null;
  }
}
