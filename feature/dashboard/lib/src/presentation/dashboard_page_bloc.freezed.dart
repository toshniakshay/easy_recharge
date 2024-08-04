// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() goToWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? goToWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? goToWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboardPageEvent value) load,
    required TResult Function(_GoToWalletDashboardPageEvent value) goToWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboardPageEvent value)? load,
    TResult? Function(_GoToWalletDashboardPageEvent value)? goToWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboardPageEvent value)? load,
    TResult Function(_GoToWalletDashboardPageEvent value)? goToWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$LoadDashboardPageEventImpl implements _LoadDashboardPageEvent {
  const _$LoadDashboardPageEventImpl();

  @override
  String toString() {
    return 'DashboardPageEvent.load()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() goToWallet,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? goToWallet,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? goToWallet,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboardPageEvent value) load,
    required TResult Function(_GoToWalletDashboardPageEvent value) goToWallet,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboardPageEvent value)? load,
    TResult? Function(_GoToWalletDashboardPageEvent value)? goToWallet,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboardPageEvent value)? load,
    TResult Function(_GoToWalletDashboardPageEvent value)? goToWallet,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadDashboardPageEvent implements DashboardPageEvent {
  const factory _LoadDashboardPageEvent() = _$LoadDashboardPageEventImpl;
}

/// @nodoc

class _$GoToWalletDashboardPageEventImpl
    implements _GoToWalletDashboardPageEvent {
  const _$GoToWalletDashboardPageEventImpl();

  @override
  String toString() {
    return 'DashboardPageEvent.goToWallet()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() goToWallet,
  }) {
    return goToWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? goToWallet,
  }) {
    return goToWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? goToWallet,
    required TResult orElse(),
  }) {
    if (goToWallet != null) {
      return goToWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDashboardPageEvent value) load,
    required TResult Function(_GoToWalletDashboardPageEvent value) goToWallet,
  }) {
    return goToWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDashboardPageEvent value)? load,
    TResult? Function(_GoToWalletDashboardPageEvent value)? goToWallet,
  }) {
    return goToWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDashboardPageEvent value)? load,
    TResult Function(_GoToWalletDashboardPageEvent value)? goToWallet,
    required TResult orElse(),
  }) {
    if (goToWallet != null) {
      return goToWallet(this);
    }
    return orElse();
  }
}

abstract class _GoToWalletDashboardPageEvent implements DashboardPageEvent {
  const factory _GoToWalletDashboardPageEvent() =
      _$GoToWalletDashboardPageEventImpl;
}

/// @nodoc
mixin _$DashboardPageState {
  UiState get uiState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardPageStateCopyWith<DashboardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPageStateCopyWith<$Res> {
  factory $DashboardPageStateCopyWith(
          DashboardPageState value, $Res Function(DashboardPageState) then) =
      _$DashboardPageStateCopyWithImpl<$Res, DashboardPageState>;
  @useResult
  $Res call({UiState uiState});

  $UiStateCopyWith<$Res> get uiState;
}

/// @nodoc
class _$DashboardPageStateCopyWithImpl<$Res, $Val extends DashboardPageState>
    implements $DashboardPageStateCopyWith<$Res> {
  _$DashboardPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiState = null,
  }) {
    return _then(_value.copyWith(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UiStateCopyWith<$Res> get uiState {
    return $UiStateCopyWith<$Res>(_value.uiState, (value) {
      return _then(_value.copyWith(uiState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardPageStateImplCopyWith<$Res>
    implements $DashboardPageStateCopyWith<$Res> {
  factory _$$DashboardPageStateImplCopyWith(_$DashboardPageStateImpl value,
          $Res Function(_$DashboardPageStateImpl) then) =
      __$$DashboardPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UiState uiState});

  @override
  $UiStateCopyWith<$Res> get uiState;
}

/// @nodoc
class __$$DashboardPageStateImplCopyWithImpl<$Res>
    extends _$DashboardPageStateCopyWithImpl<$Res, _$DashboardPageStateImpl>
    implements _$$DashboardPageStateImplCopyWith<$Res> {
  __$$DashboardPageStateImplCopyWithImpl(_$DashboardPageStateImpl _value,
      $Res Function(_$DashboardPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiState = null,
  }) {
    return _then(_$DashboardPageStateImpl(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
    ));
  }
}

/// @nodoc

class _$DashboardPageStateImpl implements _DashboardPageState {
  const _$DashboardPageStateImpl({this.uiState = const UiState.initial()});

  @override
  @JsonKey()
  final UiState uiState;

  @override
  String toString() {
    return 'DashboardPageState(uiState: $uiState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardPageStateImpl &&
            (identical(other.uiState, uiState) || other.uiState == uiState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uiState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardPageStateImplCopyWith<_$DashboardPageStateImpl> get copyWith =>
      __$$DashboardPageStateImplCopyWithImpl<_$DashboardPageStateImpl>(
          this, _$identity);
}

abstract class _DashboardPageState implements DashboardPageState {
  const factory _DashboardPageState({final UiState uiState}) =
      _$DashboardPageStateImpl;

  @override
  UiState get uiState;
  @override
  @JsonKey(ignore: true)
  _$$DashboardPageStateImplCopyWith<_$DashboardPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
