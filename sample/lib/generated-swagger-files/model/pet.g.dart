// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pet _$_$_PetFromJson(Map<String, dynamic> json) {
  return _$_Pet(
    id: json['id'] as int?,
    category: json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
    name: json['name'] as String,
    photoUrls:
        (json['photoUrls'] as List<dynamic>).map((e) => e as String).toList(),
    tags: (json['tags'] as List<dynamic>?)
        ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: json['status'],
  );
}

Map<String, dynamic> _$_$_PetToJson(_$_Pet instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': instance.status,
    };
