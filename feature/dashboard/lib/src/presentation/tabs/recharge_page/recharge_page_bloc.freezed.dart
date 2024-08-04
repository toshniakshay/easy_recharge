// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RechargePageState {
  UiState get uiState => throw _privateConstructorUsedError;
  List<Beneficiary> get beneficiariesList => throw _privateConstructorUsedError;
  num get accountBalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RechargePageStateCopyWith<RechargePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RechargePageStateCopyWith<$Res> {
  factory $RechargePageStateCopyWith(
          RechargePageState value, $Res Function(RechargePageState) then) =
      _$RechargePageStateCopyWithImpl<$Res, RechargePageState>;
  @useResult
  $Res call(
      {UiState uiState,
      List<Beneficiary> beneficiariesList,
      num accountBalance});

  $UiStateCopyWith<$Res> get uiState;
}

/// @nodoc
class _$RechargePageStateCopyWithImpl<$Res, $Val extends RechargePageState>
    implements $RechargePageStateCopyWith<$Res> {
  _$RechargePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiState = null,
    Object? beneficiariesList = null,
    Object? accountBalance = null,
  }) {
    return _then(_value.copyWith(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
      beneficiariesList: null == beneficiariesList
          ? _value.beneficiariesList
          : beneficiariesList // ignore: cast_nullable_to_non_nullable
              as List<Beneficiary>,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as num,
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
abstract class _$$RechargePageStateImplCopyWith<$Res>
    implements $RechargePageStateCopyWith<$Res> {
  factory _$$RechargePageStateImplCopyWith(_$RechargePageStateImpl value,
          $Res Function(_$RechargePageStateImpl) then) =
      __$$RechargePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UiState uiState,
      List<Beneficiary> beneficiariesList,
      num accountBalance});

  @override
  $UiStateCopyWith<$Res> get uiState;
}

/// @nodoc
class __$$RechargePageStateImplCopyWithImpl<$Res>
    extends _$RechargePageStateCopyWithImpl<$Res, _$RechargePageStateImpl>
    implements _$$RechargePageStateImplCopyWith<$Res> {
  __$$RechargePageStateImplCopyWithImpl(_$RechargePageStateImpl _value,
      $Res Function(_$RechargePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiState = null,
    Object? beneficiariesList = null,
    Object? accountBalance = null,
  }) {
    return _then(_$RechargePageStateImpl(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
      beneficiariesList: null == beneficiariesList
          ? _value._beneficiariesList
          : beneficiariesList // ignore: cast_nullable_to_non_nullable
              as List<Beneficiary>,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$RechargePageStateImpl
    with DiagnosticableTreeMixin
    implements _RechargePageState {
  const _$RechargePageStateImpl(
      {this.uiState = const UiState.initial(),
      final List<Beneficiary> beneficiariesList = const [],
      this.accountBalance = 0})
      : _beneficiariesList = beneficiariesList;

  @override
  @JsonKey()
  final UiState uiState;
  final List<Beneficiary> _beneficiariesList;
  @override
  @JsonKey()
  List<Beneficiary> get beneficiariesList {
    if (_beneficiariesList is EqualUnmodifiableListView)
      return _beneficiariesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beneficiariesList);
  }

  @override
  @JsonKey()
  final num accountBalance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RechargePageState(uiState: $uiState, beneficiariesList: $beneficiariesList, accountBalance: $accountBalance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RechargePageState'))
      ..add(DiagnosticsProperty('uiState', uiState))
      ..add(DiagnosticsProperty('beneficiariesList', beneficiariesList))
      ..add(DiagnosticsProperty('accountBalance', accountBalance));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RechargePageStateImpl &&
            (identical(other.uiState, uiState) || other.uiState == uiState) &&
            const DeepCollectionEquality()
                .equals(other._beneficiariesList, _beneficiariesList) &&
            (identical(other.accountBalance, accountBalance) ||
                other.accountBalance == accountBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uiState,
      const DeepCollectionEquality().hash(_beneficiariesList), accountBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RechargePageStateImplCopyWith<_$RechargePageStateImpl> get copyWith =>
      __$$RechargePageStateImplCopyWithImpl<_$RechargePageStateImpl>(
          this, _$identity);
}

abstract class _RechargePageState implements RechargePageState {
  const factory _RechargePageState(
      {final UiState uiState,
      final List<Beneficiary> beneficiariesList,
      final num accountBalance}) = _$RechargePageStateImpl;

  @override
  UiState get uiState;
  @override
  List<Beneficiary> get beneficiariesList;
  @override
  num get accountBalance;
  @override
  @JsonKey(ignore: true)
  _$$RechargePageStateImplCopyWith<_$RechargePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RechargePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() addBeneficiary,
    required TResult Function(Beneficiary beneficiary) rechargeBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? addBeneficiary,
    TResult? Function(Beneficiary beneficiary)? rechargeBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? addBeneficiary,
    TResult Function(Beneficiary beneficiary)? rechargeBeneficiary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRechargePageEvent value) load,
    required TResult Function(_AddRechargePageEvent value) addBeneficiary,
    required TResult Function(_BeneficiaryRechargePageEvent value)
        rechargeBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult? Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RechargePageEventCopyWith<$Res> {
  factory $RechargePageEventCopyWith(
          RechargePageEvent value, $Res Function(RechargePageEvent) then) =
      _$RechargePageEventCopyWithImpl<$Res, RechargePageEvent>;
}

/// @nodoc
class _$RechargePageEventCopyWithImpl<$Res, $Val extends RechargePageEvent>
    implements $RechargePageEventCopyWith<$Res> {
  _$RechargePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRechargePageEventImplCopyWith<$Res> {
  factory _$$LoadRechargePageEventImplCopyWith(
          _$LoadRechargePageEventImpl value,
          $Res Function(_$LoadRechargePageEventImpl) then) =
      __$$LoadRechargePageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRechargePageEventImplCopyWithImpl<$Res>
    extends _$RechargePageEventCopyWithImpl<$Res, _$LoadRechargePageEventImpl>
    implements _$$LoadRechargePageEventImplCopyWith<$Res> {
  __$$LoadRechargePageEventImplCopyWithImpl(_$LoadRechargePageEventImpl _value,
      $Res Function(_$LoadRechargePageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRechargePageEventImpl
    with DiagnosticableTreeMixin
    implements _LoadRechargePageEvent {
  const _$LoadRechargePageEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RechargePageEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RechargePageEvent.load'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRechargePageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() addBeneficiary,
    required TResult Function(Beneficiary beneficiary) rechargeBeneficiary,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? addBeneficiary,
    TResult? Function(Beneficiary beneficiary)? rechargeBeneficiary,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? addBeneficiary,
    TResult Function(Beneficiary beneficiary)? rechargeBeneficiary,
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
    required TResult Function(_LoadRechargePageEvent value) load,
    required TResult Function(_AddRechargePageEvent value) addBeneficiary,
    required TResult Function(_BeneficiaryRechargePageEvent value)
        rechargeBeneficiary,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult? Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadRechargePageEvent implements RechargePageEvent {
  const factory _LoadRechargePageEvent() = _$LoadRechargePageEventImpl;
}

/// @nodoc
abstract class _$$AddRechargePageEventImplCopyWith<$Res> {
  factory _$$AddRechargePageEventImplCopyWith(_$AddRechargePageEventImpl value,
          $Res Function(_$AddRechargePageEventImpl) then) =
      __$$AddRechargePageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddRechargePageEventImplCopyWithImpl<$Res>
    extends _$RechargePageEventCopyWithImpl<$Res, _$AddRechargePageEventImpl>
    implements _$$AddRechargePageEventImplCopyWith<$Res> {
  __$$AddRechargePageEventImplCopyWithImpl(_$AddRechargePageEventImpl _value,
      $Res Function(_$AddRechargePageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddRechargePageEventImpl
    with DiagnosticableTreeMixin
    implements _AddRechargePageEvent {
  const _$AddRechargePageEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RechargePageEvent.addBeneficiary()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RechargePageEvent.addBeneficiary'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRechargePageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() addBeneficiary,
    required TResult Function(Beneficiary beneficiary) rechargeBeneficiary,
  }) {
    return addBeneficiary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? addBeneficiary,
    TResult? Function(Beneficiary beneficiary)? rechargeBeneficiary,
  }) {
    return addBeneficiary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? addBeneficiary,
    TResult Function(Beneficiary beneficiary)? rechargeBeneficiary,
    required TResult orElse(),
  }) {
    if (addBeneficiary != null) {
      return addBeneficiary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRechargePageEvent value) load,
    required TResult Function(_AddRechargePageEvent value) addBeneficiary,
    required TResult Function(_BeneficiaryRechargePageEvent value)
        rechargeBeneficiary,
  }) {
    return addBeneficiary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult? Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
  }) {
    return addBeneficiary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
    required TResult orElse(),
  }) {
    if (addBeneficiary != null) {
      return addBeneficiary(this);
    }
    return orElse();
  }
}

abstract class _AddRechargePageEvent implements RechargePageEvent {
  const factory _AddRechargePageEvent() = _$AddRechargePageEventImpl;
}

/// @nodoc
abstract class _$$BeneficiaryRechargePageEventImplCopyWith<$Res> {
  factory _$$BeneficiaryRechargePageEventImplCopyWith(
          _$BeneficiaryRechargePageEventImpl value,
          $Res Function(_$BeneficiaryRechargePageEventImpl) then) =
      __$$BeneficiaryRechargePageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Beneficiary beneficiary});

  $BeneficiaryCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$$BeneficiaryRechargePageEventImplCopyWithImpl<$Res>
    extends _$RechargePageEventCopyWithImpl<$Res,
        _$BeneficiaryRechargePageEventImpl>
    implements _$$BeneficiaryRechargePageEventImplCopyWith<$Res> {
  __$$BeneficiaryRechargePageEventImplCopyWithImpl(
      _$BeneficiaryRechargePageEventImpl _value,
      $Res Function(_$BeneficiaryRechargePageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiary = null,
  }) {
    return _then(_$BeneficiaryRechargePageEventImpl(
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as Beneficiary,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryCopyWith<$Res> get beneficiary {
    return $BeneficiaryCopyWith<$Res>(_value.beneficiary, (value) {
      return _then(_value.copyWith(beneficiary: value));
    });
  }
}

/// @nodoc

class _$BeneficiaryRechargePageEventImpl
    with DiagnosticableTreeMixin
    implements _BeneficiaryRechargePageEvent {
  const _$BeneficiaryRechargePageEventImpl({required this.beneficiary});

  @override
  final Beneficiary beneficiary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RechargePageEvent.rechargeBeneficiary(beneficiary: $beneficiary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RechargePageEvent.rechargeBeneficiary'))
      ..add(DiagnosticsProperty('beneficiary', beneficiary));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRechargePageEventImpl &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beneficiary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRechargePageEventImplCopyWith<
          _$BeneficiaryRechargePageEventImpl>
      get copyWith => __$$BeneficiaryRechargePageEventImplCopyWithImpl<
          _$BeneficiaryRechargePageEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() addBeneficiary,
    required TResult Function(Beneficiary beneficiary) rechargeBeneficiary,
  }) {
    return rechargeBeneficiary(beneficiary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? addBeneficiary,
    TResult? Function(Beneficiary beneficiary)? rechargeBeneficiary,
  }) {
    return rechargeBeneficiary?.call(beneficiary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? addBeneficiary,
    TResult Function(Beneficiary beneficiary)? rechargeBeneficiary,
    required TResult orElse(),
  }) {
    if (rechargeBeneficiary != null) {
      return rechargeBeneficiary(beneficiary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRechargePageEvent value) load,
    required TResult Function(_AddRechargePageEvent value) addBeneficiary,
    required TResult Function(_BeneficiaryRechargePageEvent value)
        rechargeBeneficiary,
  }) {
    return rechargeBeneficiary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult? Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
  }) {
    return rechargeBeneficiary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_AddRechargePageEvent value)? addBeneficiary,
    TResult Function(_BeneficiaryRechargePageEvent value)? rechargeBeneficiary,
    required TResult orElse(),
  }) {
    if (rechargeBeneficiary != null) {
      return rechargeBeneficiary(this);
    }
    return orElse();
  }
}

abstract class _BeneficiaryRechargePageEvent implements RechargePageEvent {
  const factory _BeneficiaryRechargePageEvent(
          {required final Beneficiary beneficiary}) =
      _$BeneficiaryRechargePageEventImpl;

  Beneficiary get beneficiary;
  @JsonKey(ignore: true)
  _$$BeneficiaryRechargePageEventImplCopyWith<
          _$BeneficiaryRechargePageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
