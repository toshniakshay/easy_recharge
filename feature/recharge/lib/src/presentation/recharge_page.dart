import 'package:app_di/app_di.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recharge/src/presentation/recharge_page_bloc.dart';
import 'package:recharge/src/presentation/widgets/beneficiary_card.dart';
import 'package:recharge/src/presentation/widgets/recharge_rate_container.dart';

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
        appbar: ApplicationTopBar(title: 'Recharge'),
        body: BlocBuilder<RechargePageBloc, RechargePageState>(
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
                context.read<RechargePageBloc>().add(RechargePageEvent.load());
              },
            ),
          ),
        ),
      ),
    );
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
              'Beneficiary Details',
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
          title: 'Top Up',
          onClick: selectedRechargeRate == null
              ? null
              : () => context.read<RechargePageBloc>().add(
                    RechargePageEvent.recharge(beneficiary: beneficiary),
                  )),
    );
  }
}
