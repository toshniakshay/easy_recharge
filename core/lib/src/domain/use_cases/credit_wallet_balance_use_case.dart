import 'package:core/src/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class CreditBalanceUseCase {
  const CreditBalanceUseCase(this._repository);

  final UserRepository _repository;

  Future<Result<num, Exception>> call({required num amount}) =>
      _repository.creditWallet(amount: amount);
}
