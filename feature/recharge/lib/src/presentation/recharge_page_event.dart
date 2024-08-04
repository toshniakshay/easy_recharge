part of 'recharge_page_bloc.dart';

@freezed
sealed class RechargePageEvent with _$RechargePageEvent {
  const factory RechargePageEvent.load() = _LoadRechargePageEvent;

  const factory RechargePageEvent.changeAmount({required Currency amount}) =
      _ChangeAmountRechargeEvent;

  const factory RechargePageEvent.recharge({required Beneficiary beneficiary}) =
      _RechargeEvent;
}
