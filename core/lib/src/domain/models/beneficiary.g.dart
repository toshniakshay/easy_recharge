// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeneficiaryImpl _$$BeneficiaryImplFromJson(Map<String, dynamic> json) =>
    _$BeneficiaryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      nickName: json['nickName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      topUpHistory: (json['topUpHistory'] as List<dynamic>?)
          ?.map((e) => TransactionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$$BeneficiaryImplToJson(_$BeneficiaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nickName': instance.nickName,
      'phoneNumber': instance.phoneNumber,
      'topUpHistory': instance.topUpHistory,
      'isVerified': instance.isVerified,
    };
