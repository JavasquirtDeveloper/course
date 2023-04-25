import 'package:async_redux/async_redux.dart';
import 'package:flutter_application_1/store/app_state.dart';
import 'package:flutter_application_1/store/redux_action_logger.dart';
import 'package:flutter_application_1/store/redux_action_observer.dart';
import 'package:get_it/get_it.dart';

Store<AppState> configureStore() {
  final actionLogger = ReduxActionLogger();
  final actionObserver = ReduxActionObserver();
  GetIt.I.registerSingleton<ReduxActionObserver>(actionObserver);

  return Store<AppState>(
    initialState: AppState.initial(),
    actionObservers: [
      actionObserver,
      actionLogger,
    ],
  );
}

void configureDependencyInjection() {
  // здесь будут наши зависимости
}
