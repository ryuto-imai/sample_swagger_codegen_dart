//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';

import '../models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    @JsonKey(name: 'code') @Default(null) int? code,
    @JsonKey(name: 'type') @Default(null) String? type,
    @JsonKey(name: 'message') @Default(null) String? message,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
}
