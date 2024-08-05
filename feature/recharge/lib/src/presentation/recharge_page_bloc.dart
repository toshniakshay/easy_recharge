import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';
import 'package:recharge/src/utils/recharge_error_enum.dart';
import 'package:uuid/uuid.dart';

part 'recharge_page_bloc.freezed.dart';
part 'recharge_page_event.dart';
part 'recharge_page_state.dart';

@injectable
class RechargePageBloc extends Bloc<RechargePageEvent, RechargePageState> {
  RechargePageBloc(
    this._getAvailableRechargeRates,
    this._getWalletBalance,
    this._debitWallet,
    this._getTransactionsForUser,
    this._transactionsForMonth,
    this._addTransaction,
    this._creditWallet,
  ) : super(RechargePageState()) {
    on<RechargePageEvent>(
      (event, emit) => event.map(
        load: (e) => _onLoad(emit),
        changeAmount: (e) => _onAmountChange(e, emit),
        recharge: (e) => onRecharge(e, emit),
      ),
    );

    add(RechargePageEvent.load());
  }

  final GetAvailableRechargeRatesUseCase _getAvailableRechargeRates;
  final GetWalletBalanceUseCase _getWalletBalance;
  final DebitBalanceUseCase _debitWallet;
  final CreditBalanceUseCase _creditWallet;
  final GetAllTransactionsForUserUseCase _getTransactionsForUser;
  final GetTransactionsForMonthUseCase _transactionsForMonth;
  final AddTransactionUseCase _addTransaction;

  Future<void> _onLoad(Emitter<RechargePageState> emit) async {
    emit(state.copyWith(uiState: UiState.loading()));

    final result = (await _getAvailableRechargeRates()).getOrNull();

    if (result == null) {
      emit(state.copyWith(uiState: UiState.error(Exception())));
      return;
    }

    emit(
      state.copyWith(
        uiState: UiState.loaded(),
        rechargeAmountList: result,
      ),
    );
  }

  Future<void> _onAmountChange(
    _ChangeAmountRechargeEvent e,
    Emitter<RechargePageState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedRechargeAmount: e.amount,
      ),
    );
  }

  Future<void> onRecharge(
    _RechargeEvent e,
    Emitter<RechargePageState> emit,
  ) async {
    final accountBalance = await _getWalletBalance();

    RechargeErrorTypes? error;

    error = await accountBalance.fold(
      (s) async {
        if (s < state.selectedRechargeAmount!.amount) {
          return RechargeErrorTypes.lowBalance;
        }

        final _beneficiaryVerified = e.beneficiary.isVerified;

        final _userTransactionList =
            await _getTransactionsForUser(userId: e.beneficiary.id);

        return _userTransactionList.fold(
          (s) async {
            num totalTransactionValue = 0;

            s.map((ele) {
              totalTransactionValue = totalTransactionValue + ele.amount;
            });

            if (_beneficiaryVerified && totalTransactionValue >= 1000) {
              return RechargeErrorTypes.verifiedUserLimitExceeded;
            }

            if (!_beneficiaryVerified && totalTransactionValue >= 500) {
              return RechargeErrorTypes.unVerifiedUserLimitExceeded;
            }

            final _getAllTransactions = await _transactionsForMonth();

            return _getAllTransactions.fold(
              (s) {
                num monthlyAmount = 0;
                s.map((e) => monthlyAmount = monthlyAmount + e.amount);

                if (monthlyAmount >= 3000) {
                  return RechargeErrorTypes.monthlyTransactionLimitExceeded;
                }

                return null;
              },
              (_) => RechargeErrorTypes.unknown,
            );
          },
          (_) => RechargeErrorTypes.unknown,
        );
      },
      (f) => RechargeErrorTypes.unknown,
    );

    if (error == null) {
      // User can do recharge
      final topUp =
          await _debitWallet(amount: state.selectedRechargeAmount!.amount);
      RechargeErrorTypes? rechargeErrors;

      rechargeErrors = await topUp.fold(
        (s) async {
          final TransactionDetails t = TransactionDetails(
            benficiary: e.beneficiary,
            transactionId: Uuid().v1(),
            transactionType: TransactionTypes.topUpBeneficiary,
            amount: state.selectedRechargeAmount!.amount,
            transactionTime: DateTime.now(),
            status: TransactionStatus.success,
          );
          final rechargeResult = await _addTransaction(transaction: t);

          return rechargeResult.fold((s) {
            return null;
          }, (_) async {
            final topUp = await _creditWallet(
              amount: state.selectedRechargeAmount!.amount,
            );
            return topUp.fold(
              (_) {
                return RechargeErrorTypes.accountCreditedAgain;
              },
              (_) => RechargeErrorTypes.unknown,
            );
          });
        },
        (_) => RechargeErrorTypes.unknown,
      );
      if (rechargeErrors == null) {
        emit(state.copyWith(rechargeSuccessful: true));
      } else {
        emit(state.copyWith(rechargeError: error));
        emit(state.copyWith(rechargeError: null));
      }
    } else {
      emit(state.copyWith(rechargeError: error));
      emit(state.copyWith(rechargeError: null));
    }
  }
}
