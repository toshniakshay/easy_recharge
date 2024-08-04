// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/core.dart' as _i494;
import 'package:dashboard/src/navigator/dashboardNavigator.dart' as _i1058;
import 'package:dashboard/src/presentation/dashboard_page_bloc.dart' as _i953;
import 'package:dashboard/src/presentation/tabs/history_page/history_page_bloc.dart'
    as _i670;
import 'package:dashboard/src/presentation/tabs/recharge_page/recharge_page_bloc.dart'
    as _i890;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.factory<_i953.DashboardPageBloc>(() => _i953.DashboardPageBloc());
    gh.factory<_i670.HistoryPageBloc>(
        () => _i670.HistoryPageBloc(gh<_i494.GetAllTransactionsUseCase>()));
    gh.factory<_i890.RechargePageBloc>(() => _i890.RechargePageBloc(
          gh<_i494.GetAllBeneficiariesUseCase>(),
          gh<_i494.GetWalletBalanceUseCase>(),
          gh<_i1058.DashboardPageNavigator>(),
        ));
    return this;
  }
}
