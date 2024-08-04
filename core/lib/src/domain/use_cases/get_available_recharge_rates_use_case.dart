import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class GetAvailableRechargeRatesUseCase {
  const GetAvailableRechargeRatesUseCase();

  Future<Result<List<Currency>, Exception>> call() async {
    return success(availableRechargeRates);
  }
}
