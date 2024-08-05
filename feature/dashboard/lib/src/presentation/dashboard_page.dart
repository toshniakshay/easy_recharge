import 'package:app_di/app_di.dart';
import 'package:dashboard/src/presentation/dashboard_page_bloc.dart';
import 'package:dashboard/src/presentation/tabs/history_page/history_page.dart';
import 'package:dashboard/src/presentation/tabs/recharge_page/recharge_page.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<DashboardPageBloc>(),
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: AppScaffold(
          appbar: AppBar(
            title: Text('Easy Recharge'),
            actions: [
              GestureDetector(
                onTap: () => context.read<DashboardPageBloc>().add(
                      DashboardPageEvent.goToWallet(),
                    ),
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    size: 30,
                    Icons.account_balance_wallet_sharp,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
            bottom: TabBar(
              tabAlignment: TabAlignment.fill,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Theme.of(context).disabledColor,
              indicatorColor: Theme.of(context).primaryColor,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Theme.of(context).disabledColor,
              tabs: [
                Tab(
                  text: 'Recharge',
                ),
                Tab(
                  text: 'History',
                ),
              ],
            ),
          ),
          body: BlocBuilder<DashboardPageBloc, DashboardPageState>(
            builder: (context, state) {
              return state.uiState.map(
                initial: (_) => Loading(),
                loading: (_) => Loading(),
                loaded: (_) => _Content(state),
                error: (_) => ErrorStateView(
                  onRetry: () {},
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content(this.state);

  final DashboardPageState state;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        RechargePage(),
        HistoryPage(),
      ],
    );
  }
}
