import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BeneficiariesView extends StatelessWidget {
  const BeneficiariesView({
    required this.cardWidth,
    required this.beneficiariesList,
    required this.onRechargeClick,
    super.key,
  });

  final double? cardWidth;
  final List<Beneficiary> beneficiariesList;
  final Function(Beneficiary beneficiary) onRechargeClick;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: beneficiariesList.length,
      itemBuilder: (context, index) {
        final beneficiary = beneficiariesList[index];
        return Container(
          width: cardWidth,
          child: Card(
            elevation: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: xxs),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        beneficiary.isVerified
                            ? Icon(
                                color: Colors.green,
                                Icons.check_circle_outline,
                              )
                            : Icon(
                                color: Colors.orange,
                                Icons.error_outline,
                              ),
                      ],
                    ),
                  ),
                  SizedBox(height: xxs),
                  Text(beneficiary.name),
                  SizedBox(height: xxs),
                  Text(beneficiary.phoneNumber),
                  SizedBox(height: xs),
                  PrimaryButton.small(
                    title: 'Recharge',
                    onClick: () => onRechargeClick(beneficiary),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
