import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/store/app_state.dart';

class GetSchoolInfoAction extends Action<AppState> {
  GetSchoolInfoAction(this.value);

  final DataSnapshot value;

  @override
  Operation get operationKey => Operation.getSchoolInfo;

  @override
  Future<AppState> reduce() async {
    // final json = jsonDecode(jsonEncode(value.child('rooms').value.toString()));
    final database = FirebaseDatabase.instance.ref('rooms');
    final snapshot = await database.get();

    print((snapshot.value));

    // void filter(List<Object?> list) {
    //   list.map((e) => print(e));
    // }

    // print((value.child('rooms').value as List<Object?>).map((e) {
    //   Room.fromJson({'fefe': e!});
    // }));

    // final rooms = CommonDataListResponseModel<Room>.fromJson(
    //         database.child('rooms') as Map<String, dynamic>, Room.fromJson)
    //     .rooms;
    // print(rooms);
    // print(value.child('rooms').child('0'));

    // print(value.child('rooms').value as List<DataSnapshot?>);
    // print(value.child('rooms'));

    return state.rebuild((s) {
      // s.school.rooms = rooms;
    });
  }
}
