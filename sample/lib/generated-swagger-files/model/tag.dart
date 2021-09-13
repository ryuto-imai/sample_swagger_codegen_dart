//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: 'id') @Default(null) int? id,
    @JsonKey(name: 'name') @Default(null) String? name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

