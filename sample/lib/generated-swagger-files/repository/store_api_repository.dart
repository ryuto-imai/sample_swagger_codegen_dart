//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of '../repositories.dart';

abstract class StoreApiRepository {
  late Dio dio;
  late String baseUrl;
  late ApiAuthRepository authRepository;

  Future<Result<void>> deleteOrder(
    int orderId,
  );

  Future<Result<WrapMap>> getInventory(
  );

  Future<Result<Order>> getOrderById(
    int orderId,
  );

  Future<Result<Order>> placeOrder(
    Order body,
  );

}
