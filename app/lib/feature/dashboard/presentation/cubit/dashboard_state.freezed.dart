// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shellNavigationLoading,
    required TResult Function() shellNavigationError,
    required TResult Function(List<DashboardEntry> entries) shellNavigationContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? shellNavigationLoading,
    TResult? Function()? shellNavigationError,
    TResult? Function(List<DashboardEntry> entries)? shellNavigationContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shellNavigationLoading,
    TResult Function()? shellNavigationError,
    TResult Function(List<DashboardEntry> entries)? shellNavigationContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLoading value) shellNavigationLoading,
    required TResult Function(DashboardError value) shellNavigationError,
    required TResult Function(DashboardContent value) shellNavigationContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLoading value)? shellNavigationLoading,
    TResult? Function(DashboardError value)? shellNavigationError,
    TResult? Function(DashboardContent value)? shellNavigationContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLoading value)? shellNavigationLoading,
    TResult Function(DashboardError value)? shellNavigationError,
    TResult Function(DashboardContent value)? shellNavigationContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState> implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DashboardLoadingImplCopyWith<$Res> {
  factory _$$DashboardLoadingImplCopyWith(_$DashboardLoadingImpl value, $Res Function(_$DashboardLoadingImpl) then) =
      __$$DashboardLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLoadingImplCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res, _$DashboardLoadingImpl>
    implements _$$DashboardLoadingImplCopyWith<$Res> {
  __$$DashboardLoadingImplCopyWithImpl(_$DashboardLoadingImpl _value, $Res Function(_$DashboardLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardLoadingImpl implements DashboardLoading {
  const _$DashboardLoadingImpl();

  @override
  String toString() {
    return 'DashboardState.shellNavigationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$DashboardLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shellNavigationLoading,
    required TResult Function() shellNavigationError,
    required TResult Function(List<DashboardEntry> entries) shellNavigationContent,
  }) {
    return shellNavigationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? shellNavigationLoading,
    TResult? Function()? shellNavigationError,
    TResult? Function(List<DashboardEntry> entries)? shellNavigationContent,
  }) {
    return shellNavigationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shellNavigationLoading,
    TResult Function()? shellNavigationError,
    TResult Function(List<DashboardEntry> entries)? shellNavigationContent,
    required TResult orElse(),
  }) {
    if (shellNavigationLoading != null) {
      return shellNavigationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLoading value) shellNavigationLoading,
    required TResult Function(DashboardError value) shellNavigationError,
    required TResult Function(DashboardContent value) shellNavigationContent,
  }) {
    return shellNavigationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLoading value)? shellNavigationLoading,
    TResult? Function(DashboardError value)? shellNavigationError,
    TResult? Function(DashboardContent value)? shellNavigationContent,
  }) {
    return shellNavigationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLoading value)? shellNavigationLoading,
    TResult Function(DashboardError value)? shellNavigationError,
    TResult Function(DashboardContent value)? shellNavigationContent,
    required TResult orElse(),
  }) {
    if (shellNavigationLoading != null) {
      return shellNavigationLoading(this);
    }
    return orElse();
  }
}

abstract class DashboardLoading implements DashboardState {
  const factory DashboardLoading() = _$DashboardLoadingImpl;
}

/// @nodoc
abstract class _$$DashboardErrorImplCopyWith<$Res> {
  factory _$$DashboardErrorImplCopyWith(_$DashboardErrorImpl value, $Res Function(_$DashboardErrorImpl) then) =
      __$$DashboardErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardErrorImplCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res, _$DashboardErrorImpl>
    implements _$$DashboardErrorImplCopyWith<$Res> {
  __$$DashboardErrorImplCopyWithImpl(_$DashboardErrorImpl _value, $Res Function(_$DashboardErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardErrorImpl implements DashboardError {
  const _$DashboardErrorImpl();

  @override
  String toString() {
    return 'DashboardState.shellNavigationError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$DashboardErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shellNavigationLoading,
    required TResult Function() shellNavigationError,
    required TResult Function(List<DashboardEntry> entries) shellNavigationContent,
  }) {
    return shellNavigationError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? shellNavigationLoading,
    TResult? Function()? shellNavigationError,
    TResult? Function(List<DashboardEntry> entries)? shellNavigationContent,
  }) {
    return shellNavigationError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shellNavigationLoading,
    TResult Function()? shellNavigationError,
    TResult Function(List<DashboardEntry> entries)? shellNavigationContent,
    required TResult orElse(),
  }) {
    if (shellNavigationError != null) {
      return shellNavigationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLoading value) shellNavigationLoading,
    required TResult Function(DashboardError value) shellNavigationError,
    required TResult Function(DashboardContent value) shellNavigationContent,
  }) {
    return shellNavigationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLoading value)? shellNavigationLoading,
    TResult? Function(DashboardError value)? shellNavigationError,
    TResult? Function(DashboardContent value)? shellNavigationContent,
  }) {
    return shellNavigationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLoading value)? shellNavigationLoading,
    TResult Function(DashboardError value)? shellNavigationError,
    TResult Function(DashboardContent value)? shellNavigationContent,
    required TResult orElse(),
  }) {
    if (shellNavigationError != null) {
      return shellNavigationError(this);
    }
    return orElse();
  }
}

abstract class DashboardError implements DashboardState {
  const factory DashboardError() = _$DashboardErrorImpl;
}

/// @nodoc
abstract class _$$DashboardContentImplCopyWith<$Res> {
  factory _$$DashboardContentImplCopyWith(_$DashboardContentImpl value, $Res Function(_$DashboardContentImpl) then) =
      __$$DashboardContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DashboardEntry> entries});
}

/// @nodoc
class __$$DashboardContentImplCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res, _$DashboardContentImpl>
    implements _$$DashboardContentImplCopyWith<$Res> {
  __$$DashboardContentImplCopyWithImpl(_$DashboardContentImpl _value, $Res Function(_$DashboardContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
  }) {
    return _then(_$DashboardContentImpl(
      null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<DashboardEntry>,
    ));
  }
}

/// @nodoc

class _$DashboardContentImpl implements DashboardContent {
  const _$DashboardContentImpl(final List<DashboardEntry> entries) : _entries = entries;

  final List<DashboardEntry> _entries;
  @override
  List<DashboardEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'DashboardState.shellNavigationContent(entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardContentImpl &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardContentImplCopyWith<_$DashboardContentImpl> get copyWith =>
      __$$DashboardContentImplCopyWithImpl<_$DashboardContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shellNavigationLoading,
    required TResult Function() shellNavigationError,
    required TResult Function(List<DashboardEntry> entries) shellNavigationContent,
  }) {
    return shellNavigationContent(entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? shellNavigationLoading,
    TResult? Function()? shellNavigationError,
    TResult? Function(List<DashboardEntry> entries)? shellNavigationContent,
  }) {
    return shellNavigationContent?.call(entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shellNavigationLoading,
    TResult Function()? shellNavigationError,
    TResult Function(List<DashboardEntry> entries)? shellNavigationContent,
    required TResult orElse(),
  }) {
    if (shellNavigationContent != null) {
      return shellNavigationContent(entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLoading value) shellNavigationLoading,
    required TResult Function(DashboardError value) shellNavigationError,
    required TResult Function(DashboardContent value) shellNavigationContent,
  }) {
    return shellNavigationContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLoading value)? shellNavigationLoading,
    TResult? Function(DashboardError value)? shellNavigationError,
    TResult? Function(DashboardContent value)? shellNavigationContent,
  }) {
    return shellNavigationContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLoading value)? shellNavigationLoading,
    TResult Function(DashboardError value)? shellNavigationError,
    TResult Function(DashboardContent value)? shellNavigationContent,
    required TResult orElse(),
  }) {
    if (shellNavigationContent != null) {
      return shellNavigationContent(this);
    }
    return orElse();
  }
}

abstract class DashboardContent implements DashboardState {
  const factory DashboardContent(final List<DashboardEntry> entries) = _$DashboardContentImpl;

  List<DashboardEntry> get entries;
  @JsonKey(ignore: true)
  _$$DashboardContentImplCopyWith<_$DashboardContentImpl> get copyWith => throw _privateConstructorUsedError;
}