import 'package:injectable/injectable.dart';

@Singleton()
@injectable
class AccountWalletMock {
  num _accountBalance = 2000;

  num get balance => _accountBalance;

  num debitAccount({required num amount}) => _accountBalance - amount;

  num creditAccount({required num amount}) => _accountBalance - amount;
}
