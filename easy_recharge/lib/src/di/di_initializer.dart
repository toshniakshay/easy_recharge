import "dart:async";

import "package:app_di/app_di.dart";
import "package:beneficiary/beneficiary.dart";
import "package:core/core.dart";
import "package:dashboard/dashboard.dart";
import 'package:easy_recharge/src/di/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import "package:recharge/recharge.dart";

Future<void> initDi() => initContainer(
      [
        MainDIInitializer(),
        ..._coreDIInitializer(),
        ..._utilityDIInitializer(),
        ..._featureDIInitializer(),
      ],
    );

List<AppDiInitializer> _coreDIInitializer() => const [
      CoreDIInitializer(),
    ];

List<AppDiInitializer> _utilityDIInitializer() => const [];

List<AppDiInitializer> _featureDIInitializer() => const [
      DashboardDIInitializer(),
      BeneficiaryDIInitializer(),
      RechargeDIInitializer(),
    ];

@injectableInit
class MainDIInitializer extends AppDiInitializer {
  const MainDIInitializer() : super(_init);
}

FutureOr<GetIt> _init(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);
