import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter_application_1/store/app_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


typedef Dispatcher = Future<void> Function(Action<AppState>);

Dispatcher useDispatcher() {
  final context = useContext();
  final storeProvider = StoreProvider.of<AppState>(context, 'dispatcher');

  return storeProvider.dispatchAsync;
}
