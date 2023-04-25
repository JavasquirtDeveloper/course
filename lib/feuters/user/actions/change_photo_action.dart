import 'dart:io';

import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/store/app_state.dart';

class ChangePhotoAction extends Action<AppState> {
  ChangePhotoAction({required this.photo});

  final File? photo;

  @override
  Operation get operationKey => Operation.changePhoto;

  @override
  Future<AppState> reduce() async {
    return state.rebuild((s) {
      s.user.photo = photo;
    });
  }
}
