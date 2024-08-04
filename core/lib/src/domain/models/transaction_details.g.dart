// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDetailsImpl _$$TransactionDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailsImpl(
      transactionId: json['transactionId'] as String,
      transactionType:
          $enumDecode(_$TransactionTypesEnumMap, json['transactionType']),
      amount: json['amount'] as num,
      transactionTime: DateTime.parse(json['transactionTime'] as String),
      status: $enumDecode(_$TransactionStatusEnumMap, json['status']),
      benficiary: json['benficiary'] == null
          ? null
          : Beneficiary.fromJson(json['benficiary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionDetailsImplToJson(
        _$TransactionDetailsImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'transactionType': _$TransactionTypesEnumMap[instance.transactionType]!,
      'amount': instance.amount,
      'transactionTime': instance.transactionTime.toIso8601String(),
      'status': _$TransactionStatusEnumMap[instance.status]!,
      'benficiary': instance.benficiary,
    };

const _$TransactionTypesEnumMap = {
  TransactionTypes.accountCredit: 'accountCredit',
  TransactionTypes.accountDebit: 'accountDebit',
  TransactionTypes.topUpBeneficiary: 'topUpBeneficiary',
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.failed: 'failed',
  TransactionStatus.success: 'success',
  TransactionStatus.pending: 'pending',
};
