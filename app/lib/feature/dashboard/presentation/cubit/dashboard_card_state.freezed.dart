// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dashboardLoading,
    required TResult Function(bool isActive) dashboardContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dashboardLoading,
    TResult? Function(bool isActive)? dashboardContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dashboardLoading,
    TResult Function(bool isActive)? dashboardContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLoading value) dashboardLoading,
    required TResult Function(DashboardContent value) dashboardContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLoading value)? dashboardLoading,
    TResult? Function(DashboardContent value)? dashboardContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLoading value)? dashboardLoading,
    TResult Function(DashboardContent value)? dashboardContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardCardStateCopyWith<$Res> {
  factory $DashboardCardStateCopyWith(
          DashboardCardState value, $Res Function(DashboardCardState) then) =
      _$DashboardCardStateCopyWithImpl<$Res, DashboardCardState>;
}

/// @nodoc
class _$DashboardCardStateCopyWithImpl<$Res, $Val extends DashboardCardState>
    implements $DashboardCardStateCopyWith<$Res> {
  _$DashboardCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DashboardLoadingImplCopyWith<$Res> {
  factory _$$DashboardLoadingImplCopyWith(_$DashboardLoadingImpl value,
          $Res Function(_$DashboardLoadingImpl) then) =
      __$$DashboardLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLoadingImplCopyWithImpl<$Res>
    extends _$DashboardCardStateCopyWithImpl<$Res, _$DashboardLoadingImpl>
    implements _$$DashboardLoadingImplCopyWith<$Res> {
  __$$DashboardLoadingImplCopyWithImpl(_$DashboardLoadingImpl _value,
      $Res Function(_$DashboardLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardLoadingImpl implements DashboardLoading {
  const _$DashboardLoadingImpl();

  @override
  String toString() {
    return 'DashboardCardState.dashboardLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dashboardLoading,
    required TResult Function(bool isActive) dashboardContent,
  }) {
    return dashboardLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dashboardLoading,
    TResult? Function(bool isActive)? dashboardContent,
  }) {
    return dashboardLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dashboardLoading,
    TResult Function(bool isActive)? dashboardContent,
    required TResult orElse(),
  }) {
    if (dashboardLoading != null) {
      return dashboardLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLoading value) dashboardLoading,
    required TResult Function(DashboardContent value) dashboardContent,
  }) {
    return dashboardLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLoading value)? dashboardLoading,
    TResult? Function(DashboardContent value)? dashboardContent,
  }) {
    return dashboardLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLoading value)? dashboardLoading,
    TResult Function(DashboardContent value)? dashboardContent,
    required TResult orElse(),
  }) {
    if (dashboardLoading != null) {
      return dashboardLoading(this);
    }
    return orElse();
  }
}

abstract class DashboardLoading implements DashboardCardState {
  const factory DashboardLoading() = _$DashboardLoadingImpl;
}

/// @nodoc
abstract class _$$DashboardContentImplCopyWith<$Res> {
  factory _$$DashboardContentImplCopyWith(_$DashboardContentImpl value,
          $Res Function(_$DashboardContentImpl) then) =
      __$$DashboardContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isActive});
}

/// @nodoc
class __$$DashboardContentImplCopyWithImpl<$Res>
    extends _$DashboardCardStateCopyWithImpl<$Res, _$DashboardContentImpl>
    implements _$$DashboardContentImplCopyWith<$Res> {
  __$$DashboardContentImplCopyWithImpl(_$DashboardContentImpl _value,
      $Res Function(_$DashboardContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
  }) {
    return _then(_$DashboardContentImpl(
      null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DashboardContentImpl implements DashboardContent {
  const _$DashboardContentImpl(this.isActive);

  @override
  final bool isActive;

  @override
  String toString() {
    return 'DashboardCardState.dashboardContent(isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardContentImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardContentImplCopyWith<_$DashboardContentImpl> get copyWith =>
      __$$DashboardContentImplCopyWithImpl<_$DashboardContentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dashboardLoading,
    required TResult Function(bool isActive) dashboardContent,
  }) {
    return dashboardContent(isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dashboardLoading,
    TResult? Function(bool isActive)? dashboardContent,
  }) {
    return dashboardContent?.call(isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dashboardLoading,
    TResult Function(bool isActive)? dashboardContent,
    required TResult orElse(),
  }) {
    if (dashboardContent != null) {
      return dashboardContent(isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardLoading value) dashboardLoading,
    required TResult Function(DashboardContent value) dashboardContent,
  }) {
    return dashboardContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardLoading value)? dashboardLoading,
    TResult? Function(DashboardContent value)? dashboardContent,
  }) {
    return dashboardContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardLoading value)? dashboardLoading,
    TResult Function(DashboardContent value)? dashboardContent,
    required TResult orElse(),
  }) {
    if (dashboardContent != null) {
      return dashboardContent(this);
    }
    return orElse();
  }
}

abstract class DashboardContent implements DashboardCardState {
  const factory DashboardContent(final bool isActive) = _$DashboardContentImpl;

  bool get isActive;
  @JsonKey(ignore: true)
  _$$DashboardContentImplCopyWith<_$DashboardContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
