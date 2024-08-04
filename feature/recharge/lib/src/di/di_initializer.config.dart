// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/core.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:recharge/src/presentation/recharge_page_bloc.dart' as _i129;

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
    gh.factory<_i129.RechargePageBloc>(() => _i129.RechargePageBloc(
          gh<_i494.GetAvailableRechargeRatesUseCase>(),
          gh<_i494.GetWalletBalanceUseCase>(),
          gh<_i494.DebitBalanceUseCase>(),
          gh<_i494.GetAllTransactionsForUserUseCase>(),
          gh<_i494.GetTransactionsForMonthUseCase>(),
          gh<_i494.AddTransactionUseCase>(),
          gh<_i494.CreditBalanceUseCase>(),
        ));
    return this;
  }
}
