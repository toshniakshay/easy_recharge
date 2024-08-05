import 'package:easy_recharge/src/router/router.dart';
import 'package:injectable/injectable.dart';
import 'package:recharge/recharge.dart';


@Injectable(as: RechargeNavigator)
class AppRechargeNavigator extends RechargeNavigator {
  AppRechargeNavigator(this._router);

  final AppRouter _router;

  @override
  Future<void> onRechargeComplete() async => _router.popForced();
}