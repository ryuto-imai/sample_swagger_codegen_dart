//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    @JsonKey(name: 'id') @Default(null) int? id,
    @JsonKey(name: 'petId') @Default(null) int? petId,
    @JsonKey(name: 'quantity') @Default(null) int? quantity,
    @JsonKey(name: 'shipDate') @Default(null) DateTime? shipDate,
    @JsonKey(name: 'status') @Default(null) OrderStatusEnum? status,
    @JsonKey(name: 'complete') @Default(null) bool? complete,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

enum OrderStatusEnum {
  @JsonValue('placed') placed,
  @JsonValue('approved') approved,
  @JsonValue('delivered') delivered,
}

