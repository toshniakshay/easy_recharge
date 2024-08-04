// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beneficiary/src/navigator/beneficiary_navigator.dart' as _i283;
import 'package:beneficiary/src/presentation/add_beneficiary_bloc.dart'
    as _i1065;
import 'package:core/core.dart' as _i494;
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
    gh.factory<_i1065.AddBeneficiaryBloc>(() => _i1065.AddBeneficiaryBloc(
          gh<_i494.SaveBeneficiaryUseCase>(),
          gh<_i283.BeneficiaryNavigator>(),
        ));
    return this;
  }
}
