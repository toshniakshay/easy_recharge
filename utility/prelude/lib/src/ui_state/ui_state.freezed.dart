// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUiState value) initial,
    required TResult Function(LoadingUiState value) loading,
    required TResult Function(LoadedUiState value) loaded,
    required TResult Function(ErrorUiState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUiState value)? initial,
    TResult? Function(LoadingUiState value)? loading,
    TResult? Function(LoadedUiState value)? loaded,
    TResult? Function(ErrorUiState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUiState value)? initial,
    TResult Function(LoadingUiState value)? loading,
    TResult Function(LoadedUiState value)? loaded,
    TResult Function(ErrorUiState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiStateCopyWith<$Res> {
  factory $UiStateCopyWith(UiState value, $Res Function(UiState) then) =
      _$UiStateCopyWithImpl<$Res, UiState>;
}

/// @nodoc
class _$UiStateCopyWithImpl<$Res, $Val extends UiState>
    implements $UiStateCopyWith<$Res> {
  _$UiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialUiStateImplCopyWith<$Res> {
  factory _$$InitialUiStateImplCopyWith(_$InitialUiStateImpl value,
          $Res Function(_$InitialUiStateImpl) then) =
      __$$InitialUiStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialUiStateImplCopyWithImpl<$Res>
    extends _$UiStateCopyWithImpl<$Res, _$InitialUiStateImpl>
    implements _$$InitialUiStateImplCopyWith<$Res> {
  __$$InitialUiStateImplCopyWithImpl(
      _$InitialUiStateImpl _value, $Res Function(_$InitialUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialUiStateImpl implements InitialUiState {
  const _$InitialUiStateImpl();

  @override
  String toString() {
    return 'UiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialUiStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(Exception e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUiState value) initial,
    required TResult Function(LoadingUiState value) loading,
    required TResult Function(LoadedUiState value) loaded,
    required TResult Function(ErrorUiState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUiState value)? initial,
    TResult? Function(LoadingUiState value)? loading,
    TResult? Function(LoadedUiState value)? loaded,
    TResult? Function(ErrorUiState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUiState value)? initial,
    TResult Function(LoadingUiState value)? loading,
    TResult Function(LoadedUiState value)? loaded,
    TResult Function(ErrorUiState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUiState implements UiState {
  const factory InitialUiState() = _$InitialUiStateImpl;
}

/// @nodoc
abstract class _$$LoadingUiStateImplCopyWith<$Res> {
  factory _$$LoadingUiStateImplCopyWith(_$LoadingUiStateImpl value,
          $Res Function(_$LoadingUiStateImpl) then) =
      __$$LoadingUiStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingUiStateImplCopyWithImpl<$Res>
    extends _$UiStateCopyWithImpl<$Res, _$LoadingUiStateImpl>
    implements _$$LoadingUiStateImplCopyWith<$Res> {
  __$$LoadingUiStateImplCopyWithImpl(
      _$LoadingUiStateImpl _value, $Res Function(_$LoadingUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingUiStateImpl implements LoadingUiState {
  const _$LoadingUiStateImpl();

  @override
  String toString() {
    return 'UiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingUiStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(Exception e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUiState value) initial,
    required TResult Function(LoadingUiState value) loading,
    required TResult Function(LoadedUiState value) loaded,
    required TResult Function(ErrorUiState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUiState value)? initial,
    TResult? Function(LoadingUiState value)? loading,
    TResult? Function(LoadedUiState value)? loaded,
    TResult? Function(ErrorUiState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUiState value)? initial,
    TResult Function(LoadingUiState value)? loading,
    TResult Function(LoadedUiState value)? loaded,
    TResult Function(ErrorUiState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingUiState implements UiState {
  const factory LoadingUiState() = _$LoadingUiStateImpl;
}

/// @nodoc
abstract class _$$LoadedUiStateImplCopyWith<$Res> {
  factory _$$LoadedUiStateImplCopyWith(
          _$LoadedUiStateImpl value, $Res Function(_$LoadedUiStateImpl) then) =
      __$$LoadedUiStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedUiStateImplCopyWithImpl<$Res>
    extends _$UiStateCopyWithImpl<$Res, _$LoadedUiStateImpl>
    implements _$$LoadedUiStateImplCopyWith<$Res> {
  __$$LoadedUiStateImplCopyWithImpl(
      _$LoadedUiStateImpl _value, $Res Function(_$LoadedUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedUiStateImpl implements LoadedUiState {
  const _$LoadedUiStateImpl();

  @override
  String toString() {
    return 'UiState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedUiStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception e) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(Exception e)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUiState value) initial,
    required TResult Function(LoadingUiState value) loading,
    required TResult Function(LoadedUiState value) loaded,
    required TResult Function(ErrorUiState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUiState value)? initial,
    TResult? Function(LoadingUiState value)? loading,
    TResult? Function(LoadedUiState value)? loaded,
    TResult? Function(ErrorUiState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUiState value)? initial,
    TResult Function(LoadingUiState value)? loading,
    TResult Function(LoadedUiState value)? loaded,
    TResult Function(ErrorUiState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedUiState implements UiState {
  const factory LoadedUiState() = _$LoadedUiStateImpl;
}

/// @nodoc
abstract class _$$ErrorUiStateImplCopyWith<$Res> {
  factory _$$ErrorUiStateImplCopyWith(
          _$ErrorUiStateImpl value, $Res Function(_$ErrorUiStateImpl) then) =
      __$$ErrorUiStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$ErrorUiStateImplCopyWithImpl<$Res>
    extends _$UiStateCopyWithImpl<$Res, _$ErrorUiStateImpl>
    implements _$$ErrorUiStateImplCopyWith<$Res> {
  __$$ErrorUiStateImplCopyWithImpl(
      _$ErrorUiStateImpl _value, $Res Function(_$ErrorUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ErrorUiStateImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ErrorUiStateImpl implements ErrorUiState {
  const _$ErrorUiStateImpl(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'UiState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUiStateImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUiStateImplCopyWith<_$ErrorUiStateImpl> get copyWith =>
      __$$ErrorUiStateImplCopyWithImpl<_$ErrorUiStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUiState value) initial,
    required TResult Function(LoadingUiState value) loading,
    required TResult Function(LoadedUiState value) loaded,
    required TResult Function(ErrorUiState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUiState value)? initial,
    TResult? Function(LoadingUiState value)? loading,
    TResult? Function(LoadedUiState value)? loaded,
    TResult? Function(ErrorUiState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUiState value)? initial,
    TResult Function(LoadingUiState value)? loading,
    TResult Function(LoadedUiState value)? loaded,
    TResult Function(ErrorUiState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorUiState implements UiState {
  const factory ErrorUiState(final Exception e) = _$ErrorUiStateImpl;

  Exception get e;

  /// Create a copy of UiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorUiStateImplCopyWith<_$ErrorUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
