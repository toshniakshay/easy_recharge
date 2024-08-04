import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:recharge/recharge.dart';

@RoutePage()
class AppRechargePage extends StatelessWidget {
  const AppRechargePage({
    required this.beneficiary,
    super.key,
  });

  final Beneficiary beneficiary;

  @override
  Widget build(BuildContext context) {
    return RechargePage(
      beneficiary: beneficiary,
    );
  }
}
