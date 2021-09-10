//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';
import '../apis.dart';
import '../result.dart';
import 'api_auth_repository.dart';
import 'package:dio/dio.dart';

abstract class StoreApiRepository {
  late Dio dio;
  late String baseUrl;
  late ApiAuthRepository authRepository;

  Future deleteOrder(
    int orderId,
  );

  Future<Result<Map<String, int>>> getInventory(
  );

  Future<Result<Order>> getOrderById(
    int orderId,
  );

  Future<Result<Order>> placeOrder(
    Order body,
  );

}
