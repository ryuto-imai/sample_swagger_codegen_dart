// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _StoreApi implements StoreApi {
  _StoreApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'this url will be ignored if baseUrl is passed';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> deleteOrder(orderId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'DELETE',
            headers: <String, dynamic>{r'Content-Type': 'application/json'},
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, '/store/order/$orderId',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<WrapMap<dynamic>> getInventory(apiKey) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WrapMap<dynamic>>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Content-Type': 'application/json',
                  r'api_key': apiKey
                },
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, '/store/inventory',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WrapMap<dynamic>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Order> getOrderById(orderId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Order>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Content-Type': 'application/json'},
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, '/store/order/$orderId',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Order.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Order> placeOrder(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Order>(Options(
                method: 'POST',
                headers: <String, dynamic>{r'Content-Type': 'application/json'},
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, '/store/order',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Order.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
