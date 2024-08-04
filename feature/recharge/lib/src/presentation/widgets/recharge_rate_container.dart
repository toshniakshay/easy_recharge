import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RechargeRateContainer extends StatelessWidget {
  const RechargeRateContainer({
    super.key,
    required this.currencyList,
    required this.onCurrencyClick,
    this.selectedCurrency,
  });

  final List<Currency> currencyList;
  final Function(Currency currency) onCurrencyClick;
  final Currency? selectedCurrency;

  @override
  Widget build(BuildContext context) {
    final selectedCurrencyText = selectedCurrency == null
        ? 'Select'
        : '${selectedCurrency?.locale}  ${selectedCurrency?.amount}';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Please select the amount to Top Up',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: xs,
        ),
        Card(
          elevation: 3,
          child: InkWell(
            onTap: () {
              _showRechargeRates(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(xs),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedCurrencyText,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> _showRechargeRates(BuildContext context) async {
    await showModalBottomSheet(
      elevation: 10,
      context: context,
      builder: (context) {
        return Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: currencyList.length,
              itemBuilder: (context, index) {
                final item = currencyList[index];
                return GestureDetector(
                  onTap: () {
                    onCurrencyClick(item);
                    Navigator.pop(context);
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: xxs,
                        ),
                        child: Text(
                          '${item.locale}  ${item.amount}',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      if (index != currencyList.length) ...{
                        Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                        )
                      }
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
