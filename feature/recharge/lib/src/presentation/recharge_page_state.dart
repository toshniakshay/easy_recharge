part of 'recharge_page_bloc.dart';

@freezed
sealed class RechargePageState with _$RechargePageState {
  const factory RechargePageState({
    @Default(UiState.initial()) UiState uiState,
    @Default([]) List<Currency> rechargeAmountList,
    Currency? selectedRechargeAmount,
  }) = _RechargePageState;
}
