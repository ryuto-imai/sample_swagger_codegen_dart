//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'user_api_repository.dart';
import '../models.dart';
import '../apis.dart';
import '../result.dart';
import 'api_auth_repository.dart';
import 'package:dio/dio.dart';

class UserApiRepositoryImpl with UserApiRepository {
  final Dio dio;
  final String baseUrl;
  final ApiAuthRepository authRepository;

  UserApiRepositoryImpl({
    required this.dio,
    required this.baseUrl,
    required this.authRepository
  });

  @override
  Future createUser(
    User body,
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .createUser(
        body,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future createUsersWithArrayInput(
    List<User> body,
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .createUsersWithArrayInput(
        body,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future createUsersWithListInput(
    List<User> body,
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .createUsersWithListInput(
        body,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future deleteUser(
    String username,
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .deleteUser(
        username,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future<Result<User>> getUserByName(
    String username,
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .getUserByName(
        username,  
      )
      .then((response) => Result<User>.success(response))
      .catchError((error) => Result<User>.failure(error));
  }

  @override
  Future<Result<String>> loginUser(
    String username,
    String password,
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .loginUser(
        username,
        password,  
      )
      .then((response) => Result<String>.success(response))
      .catchError((error) => Result<String>.failure(error));
  }

  @override
  Future logoutUser(
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .logoutUser(  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future updateUser(
    String username,
    User body,
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .updateUser(
        username,
        body,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

}
