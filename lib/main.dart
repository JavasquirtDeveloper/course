import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/login_page.dart';
import 'package:flutter_application_1/presentation/main_page.dart';
import 'package:flutter_application_1/store/app_state.dart';
import 'package:flutter_application_1/store/store.dart';
import 'package:flutter_application_1/theme/theme_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

import 'app_router.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      final store = configureStore();
      configureDependencyInjection();

      runApp(StoreProvider<AppState>(
        store: store,
        child: const MyApp(),
      ));
    },
    (error, stack) => print(error),
  );
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            theme: ThemeData.light(),
            navigatorKey: appRouter.navigatorKey,
            darkTheme: ThemeData.dark(),
            home: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return const MainPage();
                }
                return const LoginPage();
              },
            ));
      },
    );
  }
}



Future<bool> isLocationAllowed() async {
  final permission = await Geolocator.checkPermission();

  switch (permission) {
    case LocationPermission.whileInUse:
    case LocationPermission.always:
      return true;
    case LocationPermission.deniedForever:
    case LocationPermission.denied:
    case LocationPermission.unableToDetermine:
    default:
      return false;
  }
}

Future<LocationPoint> getCurrentGeolocation(currentGeolocation) async {
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    throw ValidationException('Strings.exceptionGeolocationIsTurnedOff');
  }

  var permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw ValidationException(
        'Strings.exceptionGeolocationPermissionsAreDenied',
      );
    }
  }

  if (permission == LocationPermission.deniedForever) {
    throw ValidationException(
      'Strings.exceptionGeolocationPermissionsArePermanentlyDenied',
    );
  }

  final point = await Geolocator.getCurrentPosition();

  final updatedGeolocation = LocationPoint(
    lat: point.latitude,
    lon: point.longitude,
  );

  currentGeolocation = updatedGeolocation;

  return updatedGeolocation;
}

class LocationPoint {
  const LocationPoint({
    required this.lat,
    required this.lon,
  });

  final double lat;
  final double lon;
}

class ValidationException implements Exception {
  ValidationException(this.errorMessage);

  final String errorMessage;

  @override
  String toString() {
    return errorMessage;
  }
}
