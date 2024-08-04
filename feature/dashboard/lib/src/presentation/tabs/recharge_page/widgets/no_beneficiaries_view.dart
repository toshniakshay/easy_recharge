import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class NoBeneficiariesView extends StatelessWidget {
  const NoBeneficiariesView({super.key});

  @override
  Widget build(BuildContext context) {
    return DashedContainer(
      backgroundColor: Theme.of(context).disabledColor.withAlpha(20),
      dashColor: Colors.black45,
      child: Center(
        child: Text(
          'Once you add beneficiaries they should appear here',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
