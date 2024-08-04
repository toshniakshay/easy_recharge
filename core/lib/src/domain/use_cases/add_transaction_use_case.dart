import 'package:core/core.dart';
import 'package:core/src/domain/repository/transactions_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class AddTransactionUseCase {
  const AddTransactionUseCase(this._transactionsRepository);

  final TransactionsRepository _transactionsRepository;

  Future<Result<void, Exception>> call({
    required TransactionDetails transaction,
  }) =>
      _transactionsRepository.addTransaction(transaction: transaction);
}
