part of 'recharge_page_bloc.dart';

@freezed
class RechargePageState with _$RechargePageState {
  const factory RechargePageState({
    @Default(UiState.initial()) UiState uiState,
    @Default([]) List<Beneficiary> beneficiariesList,
    @Default(0) num accountBalance,
    @Default(false) bool showDialog,
  }) = _RechargePageState;
}
