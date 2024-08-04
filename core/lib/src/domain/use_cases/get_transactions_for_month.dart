import 'package:core/src/domain/models/transaction_details.dart';
import 'package:core/src/domain/repository/transactions_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class GetTransactionsForMonthUseCase {
  const GetTransactionsForMonthUseCase(this._repository);

  final TransactionsRepository _repository;

  Future<Result<List<TransactionDetails>, Exception>> call() async {
    return await _repository.getAllTransactionsForCurrentMonth();
  }
}
