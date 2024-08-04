import 'package:core/src/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class GetWalletBalanceUseCase {
  const GetWalletBalanceUseCase(this._repository);

  final UserRepository _repository;

  Future<Result<num, Exception>> call() async {
    return _repository.getWalletBalance();
  }
}
