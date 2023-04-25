import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/store/app_state.dart';

class GetUserIdAction extends Action<AppState> {
  @override
  Operation get operationKey => Operation.login;

  @override
  Future<AppState> reduce() async {
    final database = FirebaseDatabase.instance.ref('users');
    final snapshot = await database.get();
    final id = (snapshot.value as List<Object?>).length;

    return state.rebuild((s) {
      s.user.id = id;
    });
  }
}
