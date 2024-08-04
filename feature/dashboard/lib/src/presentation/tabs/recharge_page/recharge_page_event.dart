part of 'recharge_page_bloc.dart';

@freezed
class RechargePageEvent with _$RechargePageEvent {
  const factory RechargePageEvent.load() = _LoadRechargePageEvent;

  const factory RechargePageEvent.addBeneficiary() = _AddRechargePageEvent;

  const factory RechargePageEvent.rechargeBeneficiary({
    required Beneficiary beneficiary,
  }) = _BeneficiaryRechargePageEvent;
}
