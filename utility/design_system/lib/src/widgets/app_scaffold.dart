import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.appbar,
    this.backgroundColor,
    super.key,
  });

  final PreferredSizeWidget? appbar;
  final Color? backgroundColor;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      child: Scaffold(
        appBar: appbar,
        body: body,
        backgroundColor: backgroundColor ?? Colors.white,
      ),
      value: SystemUiOverlayStyle.dark,
    );
  }
}
