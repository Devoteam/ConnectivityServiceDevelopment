// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_drawer_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavDrawerEntry {
  String get category => throw _privateConstructorUsedError;
  List<String> get names => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavDrawerEntryCopyWith<NavDrawerEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavDrawerEntryCopyWith<$Res> {
  factory $NavDrawerEntryCopyWith(
          NavDrawerEntry value, $Res Function(NavDrawerEntry) then) =
      _$NavDrawerEntryCopyWithImpl<$Res, NavDrawerEntry>;
  @useResult
  $Res call({String category, List<String> names});
}

/// @nodoc
class _$NavDrawerEntryCopyWithImpl<$Res, $Val extends NavDrawerEntry>
    implements $NavDrawerEntryCopyWith<$Res> {
  _$NavDrawerEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? names = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavDrawerEntryImplCopyWith<$Res>
    implements $NavDrawerEntryCopyWith<$Res> {
  factory _$$NavDrawerEntryImplCopyWith(_$NavDrawerEntryImpl value,
          $Res Function(_$NavDrawerEntryImpl) then) =
      __$$NavDrawerEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, List<String> names});
}

/// @nodoc
class __$$NavDrawerEntryImplCopyWithImpl<$Res>
    extends _$NavDrawerEntryCopyWithImpl<$Res, _$NavDrawerEntryImpl>
    implements _$$NavDrawerEntryImplCopyWith<$Res> {
  __$$NavDrawerEntryImplCopyWithImpl(
      _$NavDrawerEntryImpl _value, $Res Function(_$NavDrawerEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? names = null,
  }) {
    return _then(_$NavDrawerEntryImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$NavDrawerEntryImpl implements _NavDrawerEntry {
  const _$NavDrawerEntryImpl(
      {required this.category, required final List<String> names})
      : _names = names;

  @override
  final String category;
  final List<String> _names;
  @override
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'NavDrawerEntry(category: $category, names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavDrawerEntryImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavDrawerEntryImplCopyWith<_$NavDrawerEntryImpl> get copyWith =>
      __$$NavDrawerEntryImplCopyWithImpl<_$NavDrawerEntryImpl>(
          this, _$identity);
}

abstract class _NavDrawerEntry implements NavDrawerEntry {
  const factory _NavDrawerEntry(
      {required final String category,
      required final List<String> names}) = _$NavDrawerEntryImpl;

  @override
  String get category;
  @override
  List<String> get names;
  @override
  @JsonKey(ignore: true)
  _$$NavDrawerEntryImplCopyWith<_$NavDrawerEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
