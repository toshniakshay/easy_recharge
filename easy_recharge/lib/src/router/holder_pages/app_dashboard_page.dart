import 'package:auto_route/annotations.dart';
import 'package:dashboard/dashboard.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppDashboardPage extends StatelessWidget {
  const AppDashboardPage({super.key});

  @override
  Widget build(BuildContext context) => DashboardPage();
}
