import 'dart:async';

import 'package:app_di/app_di.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_initializer.config.dart';

class CoreDIInitializer extends AppDiInitializer {
  const CoreDIInitializer() : super(_init);
}

@injectableInit
FutureOr<GetIt> _init(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);
