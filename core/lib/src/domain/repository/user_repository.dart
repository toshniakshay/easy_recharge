import 'package:core/src/mock/wallet_balance_mock.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

@injectable
class UserRepository {
  const UserRepository(this._accountWalletMock);

  final AccountWalletMock _accountWalletMock;

  Future<Result<num, Exception>> getWalletBalance() async {
    return success(_accountWalletMock.balance);
  }

  Future<Result<num, Exception>> debitWallet({required num amount}) async {
    return success(_accountWalletMock.debitAccount(amount: amount));
  }

  Future<Result<num, Exception>> creditWallet({required num amount}) async {
    return success(_accountWalletMock.creditAccount(amount: amount));
  }
}
