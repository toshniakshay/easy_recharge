part of 'dashboard_page_bloc.dart';

@freezed
sealed class DashboardPageState with _$DashboardPageState {
  const factory DashboardPageState({
    @Default(const UiState.initial()) UiState uiState,
  }) = _DashboardPageState;
}
