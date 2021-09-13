//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: 'id') @Default(null) int? id,
    @JsonKey(name: 'name') @Default(null) String? name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

