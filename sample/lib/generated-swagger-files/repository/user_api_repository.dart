//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';
import '../apis.dart';
import '../result.dart';
import 'api_auth_repository.dart';
import 'package:dio/dio.dart';

abstract class UserApiRepository {
  late Dio dio;
  late String baseUrl;
  late ApiAuthRepository authRepository;

  Future createUser(
    User body,
  );

  Future createUsersWithArrayInput(
    List<User> body,
  );

  Future createUsersWithListInput(
    List<User> body,
  );

  Future deleteUser(
    String username,
  );

  Future<Result<User>> getUserByName(
    String username,
  );

  Future<Result<String>> loginUser(
    String username,
    String password,
  );

  Future logoutUser(
  );

  Future updateUser(
    String username,
    User body,
  );

}
