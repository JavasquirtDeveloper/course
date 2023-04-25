import 'package:flutter/material.dart';
import 'package:flutter_application_1/feuters/operation.dart';
import 'package:flutter_application_1/widgets/modal_bottom_sheets_frame.dart';

final AppRouter appRouter = AppRouter();

class AppRouter {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void startWith(Widget route) {
    navigatorKey.currentState?.pushAndRemoveUntil<Widget>(
      MaterialPageRoute(
        builder: (context) => route,
        settings: RouteSettings(
          name: route.runtimeType.toString(),
        ),
      ),
      (route) => false,
    );
  }

  Future<T?>? goTo<T extends Object?>(
    Widget route, {
    bool withoutDouble = false,
  }) {
    return withoutDouble
        ? goToAndRemoveUntil(
            route,
            (predicate) =>
                predicate.isActive &&
                predicate.settings.name != route.runtimeType.toString(),
          )
        : navigatorKey.currentState?.push<T>(
            MaterialPageRoute(
              builder: (context) => route,
              settings: RouteSettings(
                name: route.runtimeType.toString(),
              ),
            ),
          );
  }

  Future<T?>? goToAndRemoveUntil<T extends Object?>(
    Widget route,
    RoutePredicate predicate,
  ) {
    return navigatorKey.currentState?.pushAndRemoveUntil<T>(
      MaterialPageRoute(
        builder: (context) => route,
        settings: RouteSettings(
          name: route.runtimeType.toString(),
        ),
      ),
      predicate,
    );
  }

  void goToRoot() {
    navigatorKey.currentState?.popUntil((predicate) => predicate.isFirst);
  }

  void goBackUntilPredicate(bool Function(Route<dynamic>) predicate) {
    navigatorKey.currentState?.popUntil(predicate);
  }

  void goBackUntil(Type runtimeType) {
    goBackUntilPredicate(
      (predicate) =>
          predicate.settings.name == runtimeType.toString() ||
          predicate.isFirst,
    );
  }

  bool canGoBack() => navigatorKey.currentState?.canPop() ?? false;

  void goBack([int countSteps = 1]) {
    for (var i = 0; i < countSteps; i++) {
      if (canGoBack()) {
        navigatorKey.currentState?.pop();
      }
    }
  }

  void replaceRoute(
    Widget route,
  ) {
    navigatorKey.currentState?.pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => route,
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
  }

  Future<T?> openBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    bool withTop = true,
    Widget? top,
    double? height,
    Color? backgroundColor,
    bool isDismissible = true,
    bool isScrollControlled = true,
    bool enableDrag = true,
    Operation? listenOperationState,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      backgroundColor: backgroundColor,
      constraints: BoxConstraints.loose(
        Size.fromHeight(height ?? MediaQuery.of(context).size.height * 0.9),
      ),
      isScrollControlled: isScrollControlled,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      builder: (_) => ModalBottomSheetsFrame(
        withTop: withTop,
        top: top,
        color: backgroundColor,
        enableDrag: enableDrag,
        height: height,
        child: child,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
