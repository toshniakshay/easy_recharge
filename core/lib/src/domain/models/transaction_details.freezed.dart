// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) {
  return _TransactionDetails.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetails {
  String get transactionId => throw _privateConstructorUsedError;
  TransactionTypes get transactionType => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  DateTime get transactionTime => throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  Beneficiary? get benficiary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailsCopyWith<TransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsCopyWith<$Res> {
  factory $TransactionDetailsCopyWith(
          TransactionDetails value, $Res Function(TransactionDetails) then) =
      _$TransactionDetailsCopyWithImpl<$Res, TransactionDetails>;
  @useResult
  $Res call(
      {String transactionId,
      TransactionTypes transactionType,
      num amount,
      DateTime transactionTime,
      TransactionStatus status,
      Beneficiary? benficiary});

  $BeneficiaryCopyWith<$Res>? get benficiary;
}

/// @nodoc
class _$TransactionDetailsCopyWithImpl<$Res, $Val extends TransactionDetails>
    implements $TransactionDetailsCopyWith<$Res> {
  _$TransactionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? transactionType = null,
    Object? amount = null,
    Object? transactionTime = null,
    Object? status = null,
    Object? benficiary = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      transactionTime: null == transactionTime
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      benficiary: freezed == benficiary
          ? _value.benficiary
          : benficiary // ignore: cast_nullable_to_non_nullable
              as Beneficiary?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryCopyWith<$Res>? get benficiary {
    if (_value.benficiary == null) {
      return null;
    }

    return $BeneficiaryCopyWith<$Res>(_value.benficiary!, (value) {
      return _then(_value.copyWith(benficiary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDetailsImplCopyWith<$Res>
    implements $TransactionDetailsCopyWith<$Res> {
  factory _$$TransactionDetailsImplCopyWith(_$TransactionDetailsImpl value,
          $Res Function(_$TransactionDetailsImpl) then) =
      __$$TransactionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      TransactionTypes transactionType,
      num amount,
      DateTime transactionTime,
      TransactionStatus status,
      Beneficiary? benficiary});

  @override
  $BeneficiaryCopyWith<$Res>? get benficiary;
}

/// @nodoc
class __$$TransactionDetailsImplCopyWithImpl<$Res>
    extends _$TransactionDetailsCopyWithImpl<$Res, _$TransactionDetailsImpl>
    implements _$$TransactionDetailsImplCopyWith<$Res> {
  __$$TransactionDetailsImplCopyWithImpl(_$TransactionDetailsImpl _value,
      $Res Function(_$TransactionDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? transactionType = null,
    Object? amount = null,
    Object? transactionTime = null,
    Object? status = null,
    Object? benficiary = freezed,
  }) {
    return _then(_$TransactionDetailsImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypes,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      transactionTime: null == transactionTime
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      benficiary: freezed == benficiary
          ? _value.benficiary
          : benficiary // ignore: cast_nullable_to_non_nullable
              as Beneficiary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailsImpl implements _TransactionDetails {
  const _$TransactionDetailsImpl(
      {required this.transactionId,
      required this.transactionType,
      required this.amount,
      required this.transactionTime,
      required this.status,
      this.benficiary});

  factory _$TransactionDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailsImplFromJson(json);

  @override
  final String transactionId;
  @override
  final TransactionTypes transactionType;
  @override
  final num amount;
  @override
  final DateTime transactionTime;
  @override
  final TransactionStatus status;
  @override
  final Beneficiary? benficiary;

  @override
  String toString() {
    return 'TransactionDetails(transactionId: $transactionId, transactionType: $transactionType, amount: $amount, transactionTime: $transactionTime, status: $status, benficiary: $benficiary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailsImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionTime, transactionTime) ||
                other.transactionTime == transactionTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.benficiary, benficiary) ||
                other.benficiary == benficiary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, transactionType,
      amount, transactionTime, status, benficiary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailsImplCopyWith<_$TransactionDetailsImpl> get copyWith =>
      __$$TransactionDetailsImplCopyWithImpl<_$TransactionDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailsImplToJson(
      this,
    );
  }
}

abstract class _TransactionDetails implements TransactionDetails {
  const factory _TransactionDetails(
      {required final String transactionId,
      required final TransactionTypes transactionType,
      required final num amount,
      required final DateTime transactionTime,
      required final TransactionStatus status,
      final Beneficiary? benficiary}) = _$TransactionDetailsImpl;

  factory _TransactionDetails.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailsImpl.fromJson;

  @override
  String get transactionId;
  @override
  TransactionTypes get transactionType;
  @override
  num get amount;
  @override
  DateTime get transactionTime;
  @override
  TransactionStatus get status;
  @override
  Beneficiary? get benficiary;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDetailsImplCopyWith<_$TransactionDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
