import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppSubmitForm extends StatelessWidget {
  const AppSubmitForm({
    super.key,
    required this.body,
    this.bodyAlignment = Alignment.topRight,
    this.bottomButton,
  });

  final Widget body;
  final Widget? bottomButton;
  final Alignment bodyAlignment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: bodyAlignment,
        child: Builder(
          builder: (context) => SingleChildScrollView(
            padding: MediaQuery.paddingOf(context).copyWith(top: 0),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Center(child: body),
          ),
        ),
      ),
      extendBody: bottomButton != null,
      bottomNavigationBar: bottomButton == null
          ? null
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SafeArea(
                  top: false,
                  minimum: EdgeInsets.all(xs),
                  child: bottomButton!,
                ),
              ],
            ),
    );
  }
}
