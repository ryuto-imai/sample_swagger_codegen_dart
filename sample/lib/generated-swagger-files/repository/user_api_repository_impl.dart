//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of '../repositories.dart';

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
  Future<Result<void>> createUser(
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
  Future<Result<void>> createUsersWithArrayInput(
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
  Future<Result<void>> createUsersWithListInput(
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
  Future<Result<void>> deleteUser(
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
  Future<Result<void>> logoutUser(
  ) async {

    return UserApi(this.dio, baseUrl: this.baseUrl)
      .logoutUser(  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future<Result<void>> updateUser(
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
