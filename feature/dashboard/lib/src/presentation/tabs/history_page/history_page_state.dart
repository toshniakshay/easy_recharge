part of 'history_page_bloc.dart';

@freezed
class HistoryPageState with _$HistoryPageState {
  const factory HistoryPageState({
    @Default(UiState.initial()) UiState uiState,
    @Default([]) List<TransactionDetails> transactionsHistoryList,
  }) = _HistoryPageState;
}
