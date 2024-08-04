import 'package:auto_route/auto_route.dart';
import 'package:easy_recharge/src/router/router.gr.dart';
import 'package:injectable/injectable.dart';

@Singleton()
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AppDashboardRoute.page, initial: true),
        AutoRoute(page: AppAddBeneficiaryRoute.page),
        AutoRoute(page: AppRechargeRoute.page),
      ];
}
