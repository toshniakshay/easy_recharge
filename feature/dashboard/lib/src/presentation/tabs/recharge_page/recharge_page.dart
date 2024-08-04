import 'package:app_di/app_di.dart';
import 'package:core/core.dart';
import 'package:dashboard/src/presentation/tabs/recharge_page/recharge_page_bloc.dart';
import 'package:dashboard/src/presentation/tabs/recharge_page/widgets/beneficiaries_view.dart';
import 'package:dashboard/src/presentation/tabs/recharge_page/widgets/no_beneficiaries_view.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RechargePage extends StatelessWidget {
  const RechargePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<RechargePageBloc>(),
      child: BlocBuilder<RechargePageBloc, RechargePageState>(
        builder: (context, state) => state.uiState.map(
          initial: (_) => Loading(),
          loading: (_) => Loading(),
          loaded: (_) => _Content(
            beneficiaryList: state.beneficiariesList,
            accountBalance: state.accountBalance,
          ),
          error: (_) => ErrorStateView(
            onRetry: () => context.read<RechargePageBloc>().add(
                  RechargePageEvent.load(),
                ),
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    this.accountBalance,
    required this.beneficiaryList,
  });

  final num? accountBalance;
  
  final List<Beneficiary> beneficiaryList;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: DashedContainer(
                child: Text(
                  'Balance: AED ${accountBalance}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                dashColor: Theme.of(context).primaryColor,
                backgroundColor: Theme.of(context).primaryColor.withAlpha(10),
              ),
            ),
            SizedBox(height: xs),
            Text(
              'Beneficiaries',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: xs),
            SizedBox(
              height: 180,
              child: beneficiaryList.isEmpty
                  ? NoBeneficiariesView()
                  : LayoutBuilder(builder: (builder, constraints) {
                      final totalWidth = constraints.maxWidth;
                      final cardWidth = totalWidth / 2.5;
                      return BeneficiariesView(
                        cardWidth: cardWidth,
                        beneficiariesList: beneficiaryList,
                        onRechargeClick: (beneficiary) {
                          context.read<RechargePageBloc>().add(
                                RechargePageEvent.rechargeBeneficiary(
                                  beneficiary: beneficiary,
                                ),
                              );
                        },
                      );
                    }),
            ),
            SizedBox(height: xs),
            DashedContainer(
              width: double.infinity,
              dashColor: Colors.black45,
              backgroundColor: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.info_outline),
                  SizedBox(width: xxs),
                  Text(
                    'Maximum of 5 beneficiaries can be added.',
                  ),
                ],
              ),
            ),
            Spacer(),
            PrimaryButton.blocked(
              title: 'Add Beneficiary',
              onClick: () => context.read<RechargePageBloc>().add(
                    RechargePageEvent.addBeneficiary(),
                  ),
              isLoading: false,
            ),
          ],
        ),
      );
}
