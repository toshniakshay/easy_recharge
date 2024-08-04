// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      wallet: Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
      beneficiaries: (json['beneficiaries'] as List<dynamic>?)
              ?.map((e) => Beneficiary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wallet': instance.wallet,
      'beneficiaries': instance.beneficiaries,
    };
