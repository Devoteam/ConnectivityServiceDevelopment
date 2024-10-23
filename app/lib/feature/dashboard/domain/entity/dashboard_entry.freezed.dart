// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEntry {
  int get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardEntryCopyWith<DashboardEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEntryCopyWith<$Res> {
  factory $DashboardEntryCopyWith(
          DashboardEntry value, $Res Function(DashboardEntry) then) =
      _$DashboardEntryCopyWithImpl<$Res, DashboardEntry>;
  @useResult
  $Res call(
      {int id,
      String category,
      String name,
      String description,
      String? image});
}

/// @nodoc
class _$DashboardEntryCopyWithImpl<$Res, $Val extends DashboardEntry>
    implements $DashboardEntryCopyWith<$Res> {
  _$DashboardEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? name = null,
    Object? description = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardEntryImplCopyWith<$Res>
    implements $DashboardEntryCopyWith<$Res> {
  factory _$$DashboardEntryImplCopyWith(_$DashboardEntryImpl value,
          $Res Function(_$DashboardEntryImpl) then) =
      __$$DashboardEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String category,
      String name,
      String description,
      String? image});
}

/// @nodoc
class __$$DashboardEntryImplCopyWithImpl<$Res>
    extends _$DashboardEntryCopyWithImpl<$Res, _$DashboardEntryImpl>
    implements _$$DashboardEntryImplCopyWith<$Res> {
  __$$DashboardEntryImplCopyWithImpl(
      _$DashboardEntryImpl _value, $Res Function(_$DashboardEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? name = null,
    Object? description = null,
    Object? image = freezed,
  }) {
    return _then(_$DashboardEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DashboardEntryImpl implements _DashboardEntry {
  const _$DashboardEntryImpl(
      {required this.id,
      required this.category,
      required this.name,
      required this.description,
      this.image});

  @override
  final int id;
  @override
  final String category;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? image;

  @override
  String toString() {
    return 'DashboardEntry(id: $id, category: $category, name: $name, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, name, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardEntryImplCopyWith<_$DashboardEntryImpl> get copyWith =>
      __$$DashboardEntryImplCopyWithImpl<_$DashboardEntryImpl>(
          this, _$identity);
}

abstract class _DashboardEntry implements DashboardEntry {
  const factory _DashboardEntry(
      {required final int id,
      required final String category,
      required final String name,
      required final String description,
      final String? image}) = _$DashboardEntryImpl;

  @override
  int get id;
  @override
  String get category;
  @override
  String get name;
  @override
  String get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$DashboardEntryImplCopyWith<_$DashboardEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
