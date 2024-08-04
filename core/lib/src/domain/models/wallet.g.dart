// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletImpl _$$WalletImplFromJson(Map<String, dynamic> json) => _$WalletImpl(
      accountBalance: json['accountBalance'] as num,
      transactionHistory: (json['transactionHistory'] as List<dynamic>?)
              ?.map(
                  (e) => TransactionDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'accountBalance': instance.accountBalance,
      'transactionHistory': instance.transactionHistory,
    };
