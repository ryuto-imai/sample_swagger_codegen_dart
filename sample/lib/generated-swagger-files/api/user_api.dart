//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import '../models.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed')
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  /// Create user
  ///
  /// This can only be done by the logged in user.
  @POST('/user')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future createUser(
    @Body() User body,
  );
  /// Creates list of users with given input array
  ///
  /// 
  @POST('/user/createWithArray')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future createUsersWithArrayInput(
    @Body() List<User> body,
  );
  /// Creates list of users with given input array
  ///
  /// 
  @POST('/user/createWithList')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future createUsersWithListInput(
    @Body() List<User> body,
  );
  /// Delete user
  ///
  /// This can only be done by the logged in user.
  @DELETE('/user/{username}'.replaceAll('{' r'username' '}', username.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future deleteUser(
    @Path() String username,
  );
  /// Get user by user name
  ///
  /// 
  @GET('/user/{username}'.replaceAll('{' r'username' '}', username.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<User> getUserByName(
    @Path() String username,
  );
  /// Logs user into the system
  ///
  /// 
  @GET('/user/login')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<String> loginUser(
    @Query('username') String username,
    @Query('password') String password,
  );
  /// Logs out current logged in user session
  ///
  /// 
  @GET('/user/logout')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future logoutUser(
  );
  /// Updated user
  ///
  /// This can only be done by the logged in user.
  @PUT('/user/{username}'.replaceAll('{' r'username' '}', username.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future updateUser(
    @Path() String username,
    @Body() User body,
  );
}

