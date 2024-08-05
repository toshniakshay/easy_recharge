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
mixin _$RechargePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Currency amount) changeAmount,
    required TResult Function(Beneficiary beneficiary) recharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Currency amount)? changeAmount,
    TResult? Function(Beneficiary beneficiary)? recharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Currency amount)? changeAmount,
    TResult Function(Beneficiary beneficiary)? recharge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRechargePageEvent value) load,
    required TResult Function(_ChangeAmountRechargeEvent value) changeAmount,
    required TResult Function(_RechargeEvent value) recharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult? Function(_RechargeEvent value)? recharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult Function(_RechargeEvent value)? recharge,
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

class _$LoadRechargePageEventImpl implements _LoadRechargePageEvent {
  const _$LoadRechargePageEventImpl();

  @override
  String toString() {
    return 'RechargePageEvent.load()';
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
    required TResult Function(Currency amount) changeAmount,
    required TResult Function(Beneficiary beneficiary) recharge,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Currency amount)? changeAmount,
    TResult? Function(Beneficiary beneficiary)? recharge,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Currency amount)? changeAmount,
    TResult Function(Beneficiary beneficiary)? recharge,
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
    required TResult Function(_ChangeAmountRechargeEvent value) changeAmount,
    required TResult Function(_RechargeEvent value) recharge,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult? Function(_RechargeEvent value)? recharge,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult Function(_RechargeEvent value)? recharge,
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
abstract class _$$ChangeAmountRechargeEventImplCopyWith<$Res> {
  factory _$$ChangeAmountRechargeEventImplCopyWith(
          _$ChangeAmountRechargeEventImpl value,
          $Res Function(_$ChangeAmountRechargeEventImpl) then) =
      __$$ChangeAmountRechargeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Currency amount});

  $CurrencyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$ChangeAmountRechargeEventImplCopyWithImpl<$Res>
    extends _$RechargePageEventCopyWithImpl<$Res,
        _$ChangeAmountRechargeEventImpl>
    implements _$$ChangeAmountRechargeEventImplCopyWith<$Res> {
  __$$ChangeAmountRechargeEventImplCopyWithImpl(
      _$ChangeAmountRechargeEventImpl _value,
      $Res Function(_$ChangeAmountRechargeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$ChangeAmountRechargeEventImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Currency,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get amount {
    return $CurrencyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value));
    });
  }
}

/// @nodoc

class _$ChangeAmountRechargeEventImpl implements _ChangeAmountRechargeEvent {
  const _$ChangeAmountRechargeEventImpl({required this.amount});

  @override
  final Currency amount;

  @override
  String toString() {
    return 'RechargePageEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAmountRechargeEventImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAmountRechargeEventImplCopyWith<_$ChangeAmountRechargeEventImpl>
      get copyWith => __$$ChangeAmountRechargeEventImplCopyWithImpl<
          _$ChangeAmountRechargeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Currency amount) changeAmount,
    required TResult Function(Beneficiary beneficiary) recharge,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Currency amount)? changeAmount,
    TResult? Function(Beneficiary beneficiary)? recharge,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Currency amount)? changeAmount,
    TResult Function(Beneficiary beneficiary)? recharge,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRechargePageEvent value) load,
    required TResult Function(_ChangeAmountRechargeEvent value) changeAmount,
    required TResult Function(_RechargeEvent value) recharge,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult? Function(_RechargeEvent value)? recharge,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult Function(_RechargeEvent value)? recharge,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmountRechargeEvent implements RechargePageEvent {
  const factory _ChangeAmountRechargeEvent({required final Currency amount}) =
      _$ChangeAmountRechargeEventImpl;

  Currency get amount;
  @JsonKey(ignore: true)
  _$$ChangeAmountRechargeEventImplCopyWith<_$ChangeAmountRechargeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RechargeEventImplCopyWith<$Res> {
  factory _$$RechargeEventImplCopyWith(
          _$RechargeEventImpl value, $Res Function(_$RechargeEventImpl) then) =
      __$$RechargeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Beneficiary beneficiary});

  $BeneficiaryCopyWith<$Res> get beneficiary;
}

/// @nodoc
class __$$RechargeEventImplCopyWithImpl<$Res>
    extends _$RechargePageEventCopyWithImpl<$Res, _$RechargeEventImpl>
    implements _$$RechargeEventImplCopyWith<$Res> {
  __$$RechargeEventImplCopyWithImpl(
      _$RechargeEventImpl _value, $Res Function(_$RechargeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiary = null,
  }) {
    return _then(_$RechargeEventImpl(
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

class _$RechargeEventImpl implements _RechargeEvent {
  const _$RechargeEventImpl({required this.beneficiary});

  @override
  final Beneficiary beneficiary;

  @override
  String toString() {
    return 'RechargePageEvent.recharge(beneficiary: $beneficiary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RechargeEventImpl &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beneficiary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RechargeEventImplCopyWith<_$RechargeEventImpl> get copyWith =>
      __$$RechargeEventImplCopyWithImpl<_$RechargeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Currency amount) changeAmount,
    required TResult Function(Beneficiary beneficiary) recharge,
  }) {
    return recharge(beneficiary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Currency amount)? changeAmount,
    TResult? Function(Beneficiary beneficiary)? recharge,
  }) {
    return recharge?.call(beneficiary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Currency amount)? changeAmount,
    TResult Function(Beneficiary beneficiary)? recharge,
    required TResult orElse(),
  }) {
    if (recharge != null) {
      return recharge(beneficiary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRechargePageEvent value) load,
    required TResult Function(_ChangeAmountRechargeEvent value) changeAmount,
    required TResult Function(_RechargeEvent value) recharge,
  }) {
    return recharge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRechargePageEvent value)? load,
    TResult? Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult? Function(_RechargeEvent value)? recharge,
  }) {
    return recharge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRechargePageEvent value)? load,
    TResult Function(_ChangeAmountRechargeEvent value)? changeAmount,
    TResult Function(_RechargeEvent value)? recharge,
    required TResult orElse(),
  }) {
    if (recharge != null) {
      return recharge(this);
    }
    return orElse();
  }
}

abstract class _RechargeEvent implements RechargePageEvent {
  const factory _RechargeEvent({required final Beneficiary beneficiary}) =
      _$RechargeEventImpl;

  Beneficiary get beneficiary;
  @JsonKey(ignore: true)
  _$$RechargeEventImplCopyWith<_$RechargeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RechargePageState {
  UiState get uiState => throw _privateConstructorUsedError;
  List<Currency> get rechargeAmountList => throw _privateConstructorUsedError;
  Currency? get selectedRechargeAmount => throw _privateConstructorUsedError;
  RechargeErrorTypes? get rechargeError => throw _privateConstructorUsedError;
  dynamic get rechargeSuccessful => throw _privateConstructorUsedError;

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
      List<Currency> rechargeAmountList,
      Currency? selectedRechargeAmount,
      RechargeErrorTypes? rechargeError,
      dynamic rechargeSuccessful});

  $UiStateCopyWith<$Res> get uiState;
  $CurrencyCopyWith<$Res>? get selectedRechargeAmount;
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
    Object? rechargeAmountList = null,
    Object? selectedRechargeAmount = freezed,
    Object? rechargeError = freezed,
    Object? rechargeSuccessful = freezed,
  }) {
    return _then(_value.copyWith(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
      rechargeAmountList: null == rechargeAmountList
          ? _value.rechargeAmountList
          : rechargeAmountList // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
      selectedRechargeAmount: freezed == selectedRechargeAmount
          ? _value.selectedRechargeAmount
          : selectedRechargeAmount // ignore: cast_nullable_to_non_nullable
              as Currency?,
      rechargeError: freezed == rechargeError
          ? _value.rechargeError
          : rechargeError // ignore: cast_nullable_to_non_nullable
              as RechargeErrorTypes?,
      rechargeSuccessful: freezed == rechargeSuccessful
          ? _value.rechargeSuccessful
          : rechargeSuccessful // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UiStateCopyWith<$Res> get uiState {
    return $UiStateCopyWith<$Res>(_value.uiState, (value) {
      return _then(_value.copyWith(uiState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res>? get selectedRechargeAmount {
    if (_value.selectedRechargeAmount == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_value.selectedRechargeAmount!, (value) {
      return _then(_value.copyWith(selectedRechargeAmount: value) as $Val);
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
      List<Currency> rechargeAmountList,
      Currency? selectedRechargeAmount,
      RechargeErrorTypes? rechargeError,
      dynamic rechargeSuccessful});

  @override
  $UiStateCopyWith<$Res> get uiState;
  @override
  $CurrencyCopyWith<$Res>? get selectedRechargeAmount;
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
    Object? rechargeAmountList = null,
    Object? selectedRechargeAmount = freezed,
    Object? rechargeError = freezed,
    Object? rechargeSuccessful = freezed,
  }) {
    return _then(_$RechargePageStateImpl(
      uiState: null == uiState
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UiState,
      rechargeAmountList: null == rechargeAmountList
          ? _value._rechargeAmountList
          : rechargeAmountList // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
      selectedRechargeAmount: freezed == selectedRechargeAmount
          ? _value.selectedRechargeAmount
          : selectedRechargeAmount // ignore: cast_nullable_to_non_nullable
              as Currency?,
      rechargeError: freezed == rechargeError
          ? _value.rechargeError
          : rechargeError // ignore: cast_nullable_to_non_nullable
              as RechargeErrorTypes?,
      rechargeSuccessful: freezed == rechargeSuccessful
          ? _value.rechargeSuccessful!
          : rechargeSuccessful,
    ));
  }
}

/// @nodoc

class _$RechargePageStateImpl implements _RechargePageState {
  const _$RechargePageStateImpl(
      {this.uiState = const UiState.initial(),
      final List<Currency> rechargeAmountList = const [],
      this.selectedRechargeAmount,
      this.rechargeError,
      this.rechargeSuccessful = false})
      : _rechargeAmountList = rechargeAmountList;

  @override
  @JsonKey()
  final UiState uiState;
  final List<Currency> _rechargeAmountList;
  @override
  @JsonKey()
  List<Currency> get rechargeAmountList {
    if (_rechargeAmountList is EqualUnmodifiableListView)
      return _rechargeAmountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rechargeAmountList);
  }

  @override
  final Currency? selectedRechargeAmount;
  @override
  final RechargeErrorTypes? rechargeError;
  @override
  @JsonKey()
  final dynamic rechargeSuccessful;

  @override
  String toString() {
    return 'RechargePageState(uiState: $uiState, rechargeAmountList: $rechargeAmountList, selectedRechargeAmount: $selectedRechargeAmount, rechargeError: $rechargeError, rechargeSuccessful: $rechargeSuccessful)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RechargePageStateImpl &&
            (identical(other.uiState, uiState) || other.uiState == uiState) &&
            const DeepCollectionEquality()
                .equals(other._rechargeAmountList, _rechargeAmountList) &&
            (identical(other.selectedRechargeAmount, selectedRechargeAmount) ||
                other.selectedRechargeAmount == selectedRechargeAmount) &&
            (identical(other.rechargeError, rechargeError) ||
                other.rechargeError == rechargeError) &&
            const DeepCollectionEquality()
                .equals(other.rechargeSuccessful, rechargeSuccessful));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uiState,
      const DeepCollectionEquality().hash(_rechargeAmountList),
      selectedRechargeAmount,
      rechargeError,
      const DeepCollectionEquality().hash(rechargeSuccessful));

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
      final List<Currency> rechargeAmountList,
      final Currency? selectedRechargeAmount,
      final RechargeErrorTypes? rechargeError,
      final dynamic rechargeSuccessful}) = _$RechargePageStateImpl;

  @override
  UiState get uiState;
  @override
  List<Currency> get rechargeAmountList;
  @override
  Currency? get selectedRechargeAmount;
  @override
  RechargeErrorTypes? get rechargeError;
  @override
  dynamic get rechargeSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$RechargePageStateImplCopyWith<_$RechargePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
