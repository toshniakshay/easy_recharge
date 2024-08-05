import 'package:app_di/app_di.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recharge/src/presentation/recharge_page_bloc.dart';
import 'package:recharge/src/presentation/widgets/beneficiary_card.dart';
import 'package:recharge/src/presentation/widgets/recharge_rate_container.dart';
import 'package:recharge/src/utils/constants.dart';
import 'package:recharge/src/utils/recharge_error_enum.dart';

class RechargePage extends StatelessWidget {
  const RechargePage({
    super.key,
    required this.beneficiary,
  });

  final Beneficiary beneficiary;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<RechargePageBloc>(),
      child: AppScaffold(
        appbar: ApplicationTopBar(title: Constants.screenTitle),
        body: BlocListener<RechargePageBloc, RechargePageState>(
          listener: (context, state) {
            if (state.rechargeSuccessful) {}

            if (state.rechargeError != null) {
              _showErrorDialog(context, state.rechargeError!);
            }
          },
          child: BlocBuilder<RechargePageBloc, RechargePageState>(
            builder: (context, state) => state.uiState.map(
              initial: (_) => Loading(),
              loading: (_) => Loading(),
              loaded: (_) => _Content(
                beneficiary: beneficiary,
                availableRechargeRates: state.rechargeAmountList,
                selectedRechargeRate: state.selectedRechargeAmount,
              ),
              error: (_) => ErrorStateView(
                onRetry: () {
                  context
                      .read<RechargePageBloc>()
                      .add(RechargePageEvent.load());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showErrorDialog(
    BuildContext context,
    RechargeErrorTypes rechargeErrorTypes,
  ) async {
    await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Top Up Error"),
        content: Text(_getErrorMessage(rechargeErrorTypes)),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: const Text("Okay"),
          ),
        ],
      ),
    );
  }

  String _getErrorMessage(RechargeErrorTypes rechargeErrorTypes) {
    final String? message;

    switch(rechargeErrorTypes) {
      case RechargeErrorTypes.verifiedUserLimitExceeded:
        message = 'this beneficiary has reached maximum amount allowed for month';
      case RechargeErrorTypes.unVerifiedUserLimitExceeded:
        message = 'this beneficiary has reached maximum amount allowed for month';
      case RechargeErrorTypes.monthlyTransactionLimitExceeded:
        message = 'monthly top up limit is reached';
      case RechargeErrorTypes.lowBalance:
        message = 'Balance not enough to do the recharge';
      case RechargeErrorTypes.accountCreditedAgain:
        message = 'We have reverted the balance in wallet';
      case RechargeErrorTypes.unknown:
        message = 'Something went wrong. Please try again later';
    }

    return message;
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.beneficiary,
    required this.availableRechargeRates,
    this.selectedRechargeRate,
  });

  final Beneficiary beneficiary;
  final List<Currency> availableRechargeRates;
  final Currency? selectedRechargeRate;

  @override
  Widget build(BuildContext context) {
    return AppSubmitForm(
      body: Padding(
        padding: const EdgeInsets.all(xs),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.beneficiaryDetails,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: xs),
            BeneficiaryCard(beneficiary: beneficiary),
            SizedBox(height: md),
            RechargeRateContainer(
              currencyList: availableRechargeRates,
              onCurrencyClick: (currency) => context
                  .read<RechargePageBloc>()
                  .add(RechargePageEvent.changeAmount(amount: currency)),
              selectedCurrency: selectedRechargeRate,
            ),
          ],
        ),
      ),
      bottomButton: PrimaryButton.blocked(
          title: Constants.topUp,
          onClick: selectedRechargeRate == null
              ? null
              : () => context.read<RechargePageBloc>().add(
                    RechargePageEvent.recharge(beneficiary: beneficiary),
                  )),
    );
  }
}
