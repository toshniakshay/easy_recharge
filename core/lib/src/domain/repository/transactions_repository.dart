import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class TransactionsRepository {
  const TransactionsRepository(this._transactionsMock);

  final TransactionDetailsMock _transactionsMock;

  Future<Result<List<TransactionDetails>, Exception>>
      getAllTransactions() async => success(_transactionsMock.allTransactions);

  Future<Result<List<TransactionDetails>, Exception>> getAllTransactionsForUser(
          {required String userId}) async =>
      success(_transactionsMock.allTransactions);

  Future<Result<List<TransactionDetails>, Exception>>
      getAllTransactionsForCurrentMonth() async =>
          success(_transactionsMock.allTransactions);

  Future<Result<void, Exception>> addTransaction({
    required TransactionDetails transaction,
  }) async =>
      success(_transactionsMock.addTransaction(transaction: transaction));
}
