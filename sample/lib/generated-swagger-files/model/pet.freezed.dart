// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
class _$PetTearOff {
  const _$PetTearOff();

  _Pet call(
      {@JsonKey(name: 'id') int? id = null,
      @JsonKey(name: 'category') Category? category = null,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'photoUrls') required List<String> photoUrls,
      @JsonKey(name: 'tags') List<Tag>? tags = null,
      @JsonKey(name: 'status') StatusEnum? status = null}) {
    return _Pet(
      id: id,
      category: category,
      name: name,
      photoUrls: photoUrls,
      tags: tags,
      status: status,
    );
  }

  Pet fromJson(Map<String, Object> json) {
    return Pet.fromJson(json);
  }
}

/// @nodoc
const $Pet = _$PetTearOff();

/// @nodoc
mixin _$Pet {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  Category? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  StatusEnum? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') Category? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<Tag>? tags,
      @JsonKey(name: 'status') StatusEnum? status});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$PetCopyWithImpl<$Res> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  final Pet _value;
  // ignore: unused_field
  final $Res Function(Pet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? photoUrls = freezed,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: photoUrls == freezed
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEnum?,
    ));
  }

  @override
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$PetCopyWith(_Pet value, $Res Function(_Pet) then) =
      __$PetCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') Category? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<Tag>? tags,
      @JsonKey(name: 'status') StatusEnum? status});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$PetCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res>
    implements _$PetCopyWith<$Res> {
  __$PetCopyWithImpl(_Pet _value, $Res Function(_Pet) _then)
      : super(_value, (v) => _then(v as _Pet));

  @override
  _Pet get _value => super._value as _Pet;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? photoUrls = freezed,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_Pet(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: photoUrls == freezed
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pet implements _Pet {
  const _$_Pet(
      {@JsonKey(name: 'id') this.id = null,
      @JsonKey(name: 'category') this.category = null,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'photoUrls') required this.photoUrls,
      @JsonKey(name: 'tags') this.tags = null,
      @JsonKey(name: 'status') this.status = null});

  factory _$_Pet.fromJson(Map<String, dynamic> json) => _$_$_PetFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'category')
  final Category? category;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'photoUrls')
  final List<String> photoUrls;
  @override
  @JsonKey(name: 'tags')
  final List<Tag>? tags;
  @override
  @JsonKey(name: 'status')
  final StatusEnum? status;

  @override
  String toString() {
    return 'Pet(id: $id, category: $category, name: $name, photoUrls: $photoUrls, tags: $tags, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrls, photoUrls) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrls, photoUrls)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrls) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$PetCopyWith<_Pet> get copyWith =>
      __$PetCopyWithImpl<_Pet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetToJson(this);
  }
}

abstract class _Pet implements Pet {
  const factory _Pet(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') Category? category,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'photoUrls') required List<String> photoUrls,
      @JsonKey(name: 'tags') List<Tag>? tags,
      @JsonKey(name: 'status') StatusEnum? status}) = _$_Pet;

  factory _Pet.fromJson(Map<String, dynamic> json) = _$_Pet.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category')
  Category? get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tags')
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  StatusEnum? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PetCopyWith<_Pet> get copyWith => throw _privateConstructorUsedError;
}
