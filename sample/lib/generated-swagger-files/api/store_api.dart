//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import '../models.dart';

part 'store_api.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed')
abstract class StoreApi {
  factory StoreApi(Dio dio, {String baseUrl}) = _StoreApi;

  /// Delete purchase order by ID
  ///
  /// For valid response try integer IDs with positive integer value.         Negative or non-integer values will generate API errors
  @DELETE('/store/order/{orderId}'.replaceAll('{' r'orderId' '}', orderId.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future deleteOrder(
    @Path() int orderId,
  );
  /// Returns pet inventories by status
  ///
  /// Returns a map of status codes to quantities
  @GET('/store/inventory')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<Map<String, int>> getInventory(
    @Header('api_key') String? apiKey,
  );
  /// Find purchase order by ID
  ///
  /// For valid response try integer IDs with value >= 1 and <= 10.         Other values will generated exceptions
  @GET('/store/order/{orderId}'.replaceAll('{' r'orderId' '}', orderId.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<Order> getOrderById(
    @Path() int orderId,
  );
  /// Place an order for a pet
  ///
  /// 
  @POST('/store/order')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<Order> placeOrder(
    @Body() Order body,
  );
}

