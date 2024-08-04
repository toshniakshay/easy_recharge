import 'package:core/core.dart';
import 'package:dashboard/dashboard.dart';
import 'package:easy_recharge/src/router/router.dart';
import 'package:easy_recharge/src/router/router.gr.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DashboardPageNavigator)
class AppDashboardNavigator extends DashboardPageNavigator {
  AppDashboardNavigator(this._router);

  final AppRouter _router;

  @override
  Future<void> addBeneficiary() async {
    await _router.push<void>(
      AppAddBeneficiaryRoute(),
    );
  }

  @override
  Future<void> goToWalletPage() {
    // TODO: implement goToWalletPage
    throw UnimplementedError();
  }

  @override
  Future<void> rechargeBeneficiary({required Beneficiary beneficiary}) =>
      _router.push<void>(
        AppRechargeRoute(
          beneficiary: beneficiary,
        ),
      );
}
