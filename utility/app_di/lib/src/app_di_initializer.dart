import 'dart:async';

import 'package:get_it/get_it.dart';

typedef GetItInitializer = FutureOr<void> Function(GetIt getIt, String? env);

abstract class AppDiInitializer {
  const AppDiInitializer(this._initializer);

  final GetItInitializer _initializer;

  FutureOr<void> init(GetIt getIt) => _initializer(getIt, null);
}
