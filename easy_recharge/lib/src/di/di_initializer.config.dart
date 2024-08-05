// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beneficiary/beneficiary.dart' as _i660;
import 'package:dashboard/dashboard.dart' as _i978;
import 'package:easy_recharge/src/navigator/beneficiary_navigator.dart'
    as _i969;
import 'package:easy_recharge/src/navigator/dashboard_page_navigator.dart'
    as _i281;
import 'package:easy_recharge/src/navigator/recharge_navigator.dart' as _i972;
import 'package:easy_recharge/src/router/router.dart' as _i835;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:recharge/recharge.dart' as _i477;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i835.AppRouter>(() => _i835.AppRouter());
    gh.factory<_i978.DashboardPageNavigator>(
        () => _i281.AppDashboardNavigator(gh<_i835.AppRouter>()));
    gh.factory<_i477.RechargeNavigator>(
        () => _i972.AppRechargeNavigator(gh<_i835.AppRouter>()));
    gh.factory<_i660.BeneficiaryNavigator>(
        () => _i969.AppBeneficiaryNavigator(gh<_i835.AppRouter>()));
    return this;
  }
}
