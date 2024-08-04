// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/core.dart' as _i494;
import 'package:core/src/domain/repository/beneficiary_repository.dart'
    as _i559;
import 'package:core/src/domain/repository/transactions_repository.dart'
    as _i1032;
import 'package:core/src/domain/repository/user_repository.dart' as _i24;
import 'package:core/src/domain/use_cases/add_transaction_use_case.dart'
    as _i796;
import 'package:core/src/domain/use_cases/credit_wallet_balance_use_case.dart'
    as _i914;
import 'package:core/src/domain/use_cases/debit_wallet_balance_use_case.dart'
    as _i391;
import 'package:core/src/domain/use_cases/get_all_beneficiaries_use_case.dart'
    as _i296;
import 'package:core/src/domain/use_cases/get_all_transactions_for_user_use_case.dart'
    as _i804;
import 'package:core/src/domain/use_cases/get_all_transactions_use_case.dart'
    as _i1035;
import 'package:core/src/domain/use_cases/get_available_recharge_rates_use_case.dart'
    as _i953;
import 'package:core/src/domain/use_cases/get_beneficiary_by_id_use_case.dart'
    as _i237;
import 'package:core/src/domain/use_cases/get_transactions_for_month.dart'
    as _i965;
import 'package:core/src/domain/use_cases/get_wallet_balance_use_case.dart'
    as _i28;
import 'package:core/src/domain/use_cases/save_beneficiary_use_case.dart'
    as _i153;
import 'package:core/src/mock/beneficiary_mock.dart' as _i885;
import 'package:core/src/mock/transaction_history_mock.dart' as _i648;
import 'package:core/src/mock/wallet_balance_mock.dart' as _i588;
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
    gh.factory<_i953.GetAvailableRechargeRatesUseCase>(
        () => const _i953.GetAvailableRechargeRatesUseCase());
    gh.singleton<_i885.BeneficiaryMock>(() => _i885.BeneficiaryMock());
    gh.singleton<_i648.TransactionDetailsMock>(
        () => _i648.TransactionDetailsMock());
    gh.singleton<_i588.AccountWalletMock>(() => _i588.AccountWalletMock());
    gh.factory<_i24.UserRepository>(
        () => _i24.UserRepository(gh<_i588.AccountWalletMock>()));
    gh.factory<_i559.BeneficiaryRepository>(
        () => _i559.BeneficiaryRepository(gh<_i494.BeneficiaryMock>()));
    gh.factory<_i1032.TransactionsRepository>(() =>
        _i1032.TransactionsRepository(gh<_i494.TransactionDetailsMock>()));
    gh.factory<_i296.GetAllBeneficiariesUseCase>(() =>
        _i296.GetAllBeneficiariesUseCase(gh<_i559.BeneficiaryRepository>()));
    gh.factory<_i153.SaveBeneficiaryUseCase>(
        () => _i153.SaveBeneficiaryUseCase(gh<_i559.BeneficiaryRepository>()));
    gh.factory<_i237.GetBeneficiaryByIdUseCase>(() =>
        _i237.GetBeneficiaryByIdUseCase(gh<_i559.BeneficiaryRepository>()));
    gh.factory<_i796.AddTransactionUseCase>(
        () => _i796.AddTransactionUseCase(gh<_i1032.TransactionsRepository>()));
    gh.factory<_i28.GetWalletBalanceUseCase>(
        () => _i28.GetWalletBalanceUseCase(gh<_i24.UserRepository>()));
    gh.factory<_i914.CreditBalanceUseCase>(
        () => _i914.CreditBalanceUseCase(gh<_i24.UserRepository>()));
    gh.factory<_i391.DebitBalanceUseCase>(
        () => _i391.DebitBalanceUseCase(gh<_i24.UserRepository>()));
    gh.factory<_i1035.GetAllTransactionsUseCase>(() =>
        _i1035.GetAllTransactionsUseCase(gh<_i1032.TransactionsRepository>()));
    gh.factory<_i804.GetAllTransactionsForUserUseCase>(() =>
        _i804.GetAllTransactionsForUserUseCase(
            gh<_i1032.TransactionsRepository>()));
    gh.factory<_i965.GetTransactionsForMonthUseCase>(() =>
        _i965.GetTransactionsForMonthUseCase(
            gh<_i1032.TransactionsRepository>()));
    return this;
  }
}
