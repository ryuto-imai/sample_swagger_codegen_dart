//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of '../repositories.dart';

abstract class UserApiRepository {
  late Dio dio;
  late String baseUrl;
  late ApiAuthRepository authRepository;

  Future<Result<void>> createUser(
    User body,
  );

  Future<Result<void>> createUsersWithArrayInput(
    List<User> body,
  );

  Future<Result<void>> createUsersWithListInput(
    List<User> body,
  );

  Future<Result<void>> deleteUser(
    String username,
  );

  Future<Result<User>> getUserByName(
    String username,
  );

  Future<Result<String>> loginUser(
    String username,
    String password,
  );

  Future<Result<void>> logoutUser(
  );

  Future<Result<void>> updateUser(
    String username,
    User body,
  );

}
