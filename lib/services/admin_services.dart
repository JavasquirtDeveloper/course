import 'package:flutter_application_1/api/api_client.dart';
import 'package:flutter_application_1/models/user/user.dart';

class AdminService {
  AdminService(this._apiClient);

  final ApiClient _apiClient;

  Future<void> createUser(
    String email,
    String pass,
    User user,
  ) =>
      _apiClient.createUser(email, pass, user.toJson());
}
