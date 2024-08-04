import 'package:beneficiary/beneficiary.dart';
import 'package:easy_recharge/src/router/router.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BeneficiaryNavigator)
class AppBeneficiaryNavigator extends BeneficiaryNavigator {
  AppBeneficiaryNavigator(this._router);

  final AppRouter _router;

  @override
  Future<void> onBeneficiaryAdded() async => _router.popForced();
}
