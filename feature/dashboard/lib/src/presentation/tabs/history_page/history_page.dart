import 'package:app_di/app_di.dart';
import 'package:core/core.dart';
import 'package:dashboard/src/presentation/tabs/history_page/history_page_bloc.dart';
import 'package:dashboard/src/presentation/tabs/history_page/widgets/transaction_history_card.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<HistoryPageBloc>(),
      child: BlocBuilder<HistoryPageBloc, HistoryPageState>(
        builder: (context, state) {
          return state.uiState.map(
            initial: (_) => Loading(),
            loading: (_) => Loading(),
            loaded: (_) => _Content(
              transactionHistoryList: state.transactionsHistoryList,
            ),
            error: (_) => ErrorStateView(
              onRetry: () {
                context.read<HistoryPageBloc>().add(
                      HistoryPageEvent.load(),
                    );
              },
            ),
          );
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.transactionHistoryList,
  });

  final List<TransactionDetails> transactionHistoryList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: !transactionHistoryList.isEmpty
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: transactionHistoryList.length,
                itemBuilder: (context, index) {
                  return TransactionHistoryCard(
                    transaction: transactionHistoryList[index],
                  );
                },
              )
            : EmptyStateView(
                image: AppIcons.success(),
                title: 'No Transactions to Display',
                subTitle: 'Please top up beneficiary or Account',
              ),
      ),
    );
  }
}
