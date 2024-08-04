// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Beneficiary _$BeneficiaryFromJson(Map<String, dynamic> json) {
  return _Beneficiary.fromJson(json);
}

/// @nodoc
mixin _$Beneficiary {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  List<TransactionDetails>? get topUpHistory =>
      throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiaryCopyWith<Beneficiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryCopyWith<$Res> {
  factory $BeneficiaryCopyWith(
          Beneficiary value, $Res Function(Beneficiary) then) =
      _$BeneficiaryCopyWithImpl<$Res, Beneficiary>;
  @useResult
  $Res call(
      {String id,
      String name,
      String nickName,
      String phoneNumber,
      List<TransactionDetails>? topUpHistory,
      bool isVerified});
}

/// @nodoc
class _$BeneficiaryCopyWithImpl<$Res, $Val extends Beneficiary>
    implements $BeneficiaryCopyWith<$Res> {
  _$BeneficiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nickName = null,
    Object? phoneNumber = null,
    Object? topUpHistory = freezed,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      topUpHistory: freezed == topUpHistory
          ? _value.topUpHistory
          : topUpHistory // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiaryImplCopyWith<$Res>
    implements $BeneficiaryCopyWith<$Res> {
  factory _$$BeneficiaryImplCopyWith(
          _$BeneficiaryImpl value, $Res Function(_$BeneficiaryImpl) then) =
      __$$BeneficiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String nickName,
      String phoneNumber,
      List<TransactionDetails>? topUpHistory,
      bool isVerified});
}

/// @nodoc
class __$$BeneficiaryImplCopyWithImpl<$Res>
    extends _$BeneficiaryCopyWithImpl<$Res, _$BeneficiaryImpl>
    implements _$$BeneficiaryImplCopyWith<$Res> {
  __$$BeneficiaryImplCopyWithImpl(
      _$BeneficiaryImpl _value, $Res Function(_$BeneficiaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nickName = null,
    Object? phoneNumber = null,
    Object? topUpHistory = freezed,
    Object? isVerified = null,
  }) {
    return _then(_$BeneficiaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      topUpHistory: freezed == topUpHistory
          ? _value._topUpHistory
          : topUpHistory // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiaryImpl implements _Beneficiary {
  const _$BeneficiaryImpl(
      {required this.id,
      required this.name,
      required this.nickName,
      required this.phoneNumber,
      final List<TransactionDetails>? topUpHistory,
      required this.isVerified})
      : _topUpHistory = topUpHistory;

  factory _$BeneficiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiaryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String nickName;
  @override
  final String phoneNumber;
  final List<TransactionDetails>? _topUpHistory;
  @override
  List<TransactionDetails>? get topUpHistory {
    final value = _topUpHistory;
    if (value == null) return null;
    if (_topUpHistory is EqualUnmodifiableListView) return _topUpHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isVerified;

  @override
  String toString() {
    return 'Beneficiary(id: $id, name: $name, nickName: $nickName, phoneNumber: $phoneNumber, topUpHistory: $topUpHistory, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._topUpHistory, _topUpHistory) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nickName, phoneNumber,
      const DeepCollectionEquality().hash(_topUpHistory), isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryImplCopyWith<_$BeneficiaryImpl> get copyWith =>
      __$$BeneficiaryImplCopyWithImpl<_$BeneficiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiaryImplToJson(
      this,
    );
  }
}

abstract class _Beneficiary implements Beneficiary {
  const factory _Beneficiary(
      {required final String id,
      required final String name,
      required final String nickName,
      required final String phoneNumber,
      final List<TransactionDetails>? topUpHistory,
      required final bool isVerified}) = _$BeneficiaryImpl;

  factory _Beneficiary.fromJson(Map<String, dynamic> json) =
      _$BeneficiaryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get nickName;
  @override
  String get phoneNumber;
  @override
  List<TransactionDetails>? get topUpHistory;
  @override
  bool get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiaryImplCopyWith<_$BeneficiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
