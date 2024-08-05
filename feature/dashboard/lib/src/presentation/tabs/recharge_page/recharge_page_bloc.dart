import 'package:core/core.dart';
import 'package:dashboard/src/navigator/dashboardNavigator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

part 'recahrge_page_state.dart';
part 'recharge_page_bloc.freezed.dart';
part 'recharge_page_event.dart';

@injectable
class RechargePageBloc extends Bloc<RechargePageEvent, RechargePageState> {
  RechargePageBloc(
    this._getAllBeneficiaries,
    this._getWalletBalance,
    this._navigator,
  ) : super(RechargePageState()) {
    on<RechargePageEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        addBeneficiary: (_) => _onAddBeneficiary(emit),
        rechargeBeneficiary: (e) => _onRechargeBeneficiary(e),
      ),
    );

    add(RechargePageEvent.load());
  }

  final GetAllBeneficiariesUseCase _getAllBeneficiaries;
  final GetWalletBalanceUseCase _getWalletBalance;
  final DashboardPageNavigator _navigator;

  Future<void> _onLoad(Emitter<RechargePageState> emit) async {
    emit(state.copyWith(uiState: UiState.loading()));
    final accountBalance = await _getWalletBalance();

    accountBalance.fold((balance) {
      emit(state.copyWith(
        accountBalance: balance,
      ));
    }, (f) {
      emit(state.copyWith(uiState: UiState.error(f)));
    });

    final result = await _getAllBeneficiaries();
    emit(
      result.fold(
        (s) => state.copyWith(
          uiState: UiState.loaded(),
          beneficiariesList: s,
        ),
        (f) => state.copyWith(uiState: UiState.error(f)),
      ),
    );
  }

  Future<void> _onAddBeneficiary(Emitter<RechargePageState> emit) async {
    if (state.beneficiariesList.length >= 5) {
      emit(state.copyWith(showDialog: true));
      emit(state.copyWith(showDialog: false));
      return;
    }
    await _navigator.addBeneficiary().then(
      (_) {
        if (!isClosed) {
          add(RechargePageEvent.load());
        }
      },
    );
  }

  Future<void> _onRechargeBeneficiary(_BeneficiaryRechargePageEvent e) async {
    await _navigator.rechargeBeneficiary(beneficiary: e.beneficiary);
  }
}
