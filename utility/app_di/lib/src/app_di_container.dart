import 'package:app_di/src/app_di_initializer.dart';
import 'package:get_it/get_it.dart';

final _getIt = GetIt.instance;

final diContainer = _AppDIContainer(_getIt);

Future<DIContainer> initContainer(List<AppDiInitializer> initializers) async {
  for (final initializer in initializers) {
    await initializer.init(_getIt);
  }
  return diContainer;
}

abstract class DIContainer {
  T call<T extends Object>({dynamic parameter, String? name});

  bool isRegistered<T extends Object>({String? name});
}

class _AppDIContainer implements DIContainer {
  const _AppDIContainer(this._getIt);

  final GetIt _getIt;

  @override
  T call<T extends Object>({parameter, String? name}) =>
      _getIt<T>(param1: parameter, instanceName: name);

  @override
  bool isRegistered<T extends Object>({String? name}) =>
      _getIt.isRegistered<T>(instanceName: name);
}
