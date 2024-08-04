part of 'dashboard_page_bloc.dart';

@Freezed(copyWith: false, equal: false)
sealed class DashboardPageEvent with _$DashboardPageEvent {
  const factory DashboardPageEvent.load() = _LoadDashboardPageEvent;

  const factory DashboardPageEvent.goToWallet() = _GoToWalletDashboardPageEvent;
}
