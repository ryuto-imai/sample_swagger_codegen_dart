// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$_$_OrderFromJson(Map<String, dynamic> json) {
  return _$_Order(
    id: json['id'] as int?,
    petId: json['petId'] as int?,
    quantity: json['quantity'] as int?,
    shipDate: json['shipDate'] == null
        ? null
        : DateTime.parse(json['shipDate'] as String),
    status: json['status'],
    complete: json['complete'] as bool?,
  );
}

Map<String, dynamic> _$_$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': instance.status,
      'complete': instance.complete,
    };
