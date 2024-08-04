import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({
    required this.transaction,
    super.key,
  });

  final TransactionDetails transaction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: AppIcons.dirham(),
            ),
            VerticalDivider(
              endIndent: 20,
              indent: 20,
              thickness: 0.5,
              color: Theme.of(context).disabledColor,
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (transaction.benficiary != null) ...{
                      Text(
                        transaction.benficiary!.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: micro),
                      Text(transaction.benficiary!.phoneNumber),
                    } else ...{
                      Text(
                        'Account Transfer',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: xxs),
                    },
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'AED ${transaction.amount}',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 20),
                        ),
                        DashedContainer(
                          width: 70,
                          padding: micro,
                          child: Center(
                            child: Text(
                              transaction.status.name.toUpperCase(),
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                          dashColor:
                              transaction.status == TransactionStatus.success
                                  ? Color(0xFF2E8B57)
                                  : Color(0xFFE97451),
                          backgroundColor: transaction.status ==
                                  TransactionStatus.success
                              ? Color(0xFFC1E1C1)
                              : transaction.status == TransactionStatus.pending
                                  ? Color(0xFFFAD5A5)
                                  : Color(0xFFF1C0B9),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
