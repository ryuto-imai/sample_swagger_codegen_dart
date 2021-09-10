//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';

import '../models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@freezed
class Pet with _$Pet {
  const factory Pet({
    @JsonKey(name: 'id') @Default(null) int? id,
    @JsonKey(name: 'category') @Default(null) Category? category,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'photoUrls') required List<String> photoUrls,
    @JsonKey(name: 'tags') @Default(null) List<Tag>? tags,
    @JsonKey(name: 'status') @Default(null) StatusEnum? status,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}
