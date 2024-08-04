import 'package:core/core.dart';
import 'package:injectable/injectable.dart';

@Singleton()
@injectable
class TransactionDetailsMock {
  List<TransactionDetails> _transactionsList = [];

  List<TransactionDetails> get allTransactions => _transactionsList;

  void addTransaction({required TransactionDetails transaction}) =>
      _transactionsList.add(transaction);

  void getTransactionsByUserId({required String userId}) => _transactionsList
      .map((transaction) => transaction.benficiary?.id == userId)
      .toList(growable: true);
}
