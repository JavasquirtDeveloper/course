import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class ApiClient {
  ApiClient();

  Future<void> createUser(
    String email,
    String pass,
    Map<String, dynamic> user,
  ) {
    final database = FirebaseDatabase.instance.ref('users');

    return FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: email,
          password: pass,
        )
        .then((value) => database.child(value.user!.uid).set(user));
  }
}

ApiClient configureApiClient() {
  final client = ApiClient();

  return client;
}
