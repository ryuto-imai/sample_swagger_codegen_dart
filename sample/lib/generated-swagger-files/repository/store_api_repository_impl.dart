//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of '../repositories.dart';

class StoreApiRepositoryImpl with StoreApiRepository {
  final Dio dio;
  final String baseUrl;
  final ApiAuthRepository authRepository;

  StoreApiRepositoryImpl({
    required this.dio,
    required this.baseUrl,
    required this.authRepository
  });

  @override
  Future<Result<void>> deleteOrder(
    int orderId,
  ) async {

    return StoreApi(this.dio, baseUrl: this.baseUrl)
      .deleteOrder(
        orderId,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future<Result<WrapMap>> getInventory(
  ) async {
    final apiKey = await this.authRepository.apiKey;

    return StoreApi(this.dio, baseUrl: this.baseUrl)
      .getInventory(
        apiKey,  
      )
      .then((response) => Result<WrapMap>.success(response))
      .catchError((error) => Result<WrapMap>.failure(error));
  }

  @override
  Future<Result<Order>> getOrderById(
    int orderId,
  ) async {

    return StoreApi(this.dio, baseUrl: this.baseUrl)
      .getOrderById(
        orderId,  
      )
      .then((response) => Result<Order>.success(response))
      .catchError((error) => Result<Order>.failure(error));
  }

  @override
  Future<Result<Order>> placeOrder(
    Order body,
  ) async {

    return StoreApi(this.dio, baseUrl: this.baseUrl)
      .placeOrder(
        body,  
      )
      .then((response) => Result<Order>.success(response))
      .catchError((error) => Result<Order>.failure(error));
  }

}
