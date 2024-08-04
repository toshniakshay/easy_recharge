import 'package:app_di/app_di.dart';
import 'package:design_system/design_system.dart';
import 'package:easy_recharge/src/di/di_initializer.dart';
import 'package:easy_recharge/src/router/router.dart';
import 'package:flutter/material.dart';

class BootPage extends StatefulWidget {
  const BootPage({super.key});

  @override
  State<BootPage> createState() => _BootPageState();
}

class _BootPageState extends State<BootPage> {
  final initialization = initDi();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final _router = diContainer<AppRouter>();

          return MaterialApp.router(
            routerConfig: _router.config(),
            debugShowCheckedModeBanner: false,
            title: 'Easy Recharge',
            themeMode: ThemeMode.light,
            theme: GlobalThemData.lightThemeData,
            darkTheme: GlobalThemData.darkThemeData,
          );
        }
        return Scaffold(
          body: Center(
            child: Loading(),
          ),
        );
      },
    );
  }
}
