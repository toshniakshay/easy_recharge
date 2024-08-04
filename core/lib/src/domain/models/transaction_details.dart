import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_details.freezed.dart';
part 'transaction_details.g.dart';

@freezed
class TransactionDetails with _$TransactionDetails {
  const factory TransactionDetails({
    required String transactionId,
    required TransactionTypes transactionType,
    required num amount,
    required DateTime transactionTime,
    required TransactionStatus status,
    Beneficiary? benficiary,
  }) = _TransactionDetails;

  factory TransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsFromJson(json);
}
