// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PetApi implements PetApi {
  _PetApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'this url will be ignored if baseUrl is passed';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> addPet(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'POST',
            headers: <String, dynamic>{r'Content-Type': 'application/json'},
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, '/pet',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> deletePet(petId, apiKey) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'DELETE',
            headers: <String, dynamic>{
              r'Content-Type': 'application/json',
              r'api_key': apiKey
            },
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, null,
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<List<Pet>> findPetsByStatus(status) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'status': status};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Pet>>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{r'Content-Type': 'application/json'},
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, '/pet/findByStatus',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Pet.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Pet>> findPetsByTags(tags) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'tags': tags};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Pet>>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{r'Content-Type': 'application/json'},
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, '/pet/findByTags',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Pet.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Pet> getPetById(apiKey, petId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<Pet>(
        Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Content-Type': 'application/json',
                  r'api_key': apiKey
                },
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, null,
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Pet.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> updatePet(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'PUT',
            headers: <String, dynamic>{r'Content-Type': 'application/json'},
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, '/pet',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> updatePetWithForm(petId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'POST',
            headers: <String, dynamic>{r'Content-Type': 'application/json'},
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, null,
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<ApiResponse> uploadFile(petId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse>(Options(
                method: 'POST',
                headers: <String, dynamic>{r'Content-Type': 'application/json'},
                extra: _extra,
                contentType: 'application/json')
            .compose(_dio.options, null,
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiResponse.fromJson(_result.data!);
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
