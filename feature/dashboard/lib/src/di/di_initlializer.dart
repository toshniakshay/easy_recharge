import 'dart:async';

import 'package:app_di/app_di.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_initlializer.config.dart';

class DashboardDIInitializer extends AppDiInitializer {
  const DashboardDIInitializer() : super(_init);
}

@injectableInit
FutureOr<GetIt> _init(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);
