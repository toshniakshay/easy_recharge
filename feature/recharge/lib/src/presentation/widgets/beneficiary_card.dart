import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:recharge/src/utils/constants.dart';

class BeneficiaryCard extends StatelessWidget {
  const BeneficiaryCard({
    super.key,
    required this.beneficiary,
  });

  final Beneficiary beneficiary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: Center(
                child: Initicon(
                  text: beneficiary.name,
                  backgroundColor: Theme.of(context).primaryColor,
                  size: 80,
                ),
              ),
            ),
            VerticalDivider(
              indent: 20,
              endIndent: 20,
              color: Theme.of(context).disabledColor,
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    beneficiary.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: micro),
                  Text(
                    beneficiary.phoneNumber,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: xs),
                  Text(
                    '${Constants.nickName} ${beneficiary.nickName}',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
