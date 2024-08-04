
import 'package:core/core.dart';

abstract class DashboardPageNavigator {
  Future<void> goToWalletPage();

  Future<void> addBeneficiary();

  Future<void> rechargeBeneficiary({required Beneficiary beneficiary});
}
