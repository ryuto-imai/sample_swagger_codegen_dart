// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse _$_$_ApiResponseFromJson(Map<String, dynamic> json) {
  return _$_ApiResponse(
    code: json['code'] as int?,
    type: json['type'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$_$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
    };
