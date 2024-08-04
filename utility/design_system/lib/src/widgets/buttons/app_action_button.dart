import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppActionButton extends StatelessWidget {
  const AppActionButton({
    super.key,
    required this.title,
    required this.onClick,
    required this.buttonType,
    required this.activeTitleColor,
    required this.disabledTitleColor,
    required this.buttonColor,
    this.isLoading = false,
  });

  final String title;
  final VoidCallback? onClick;
  final bool isLoading;
  final Color activeTitleColor;
  final Color disabledTitleColor;
  final ActionButtonSize buttonType;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      enabled: !isLoading || onClick != null,
      child: FilledButton(
        onPressed: onClick,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: onClick == null ? Colors.black45 : Colors.white,
              ),
        ),
        style: FilledButton.styleFrom(
          minimumSize: _size,
          backgroundColor: buttonColor,
          textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          padding: EdgeInsets.symmetric(horizontal: xs),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(xs)),
          ),
        ),
      ),
    );
  }

  Size get _size {
    switch (buttonType) {
      case ActionButtonSize.blocked:
        return Size(double.infinity, buttonType.height);
      default:
        return Size(100, buttonType.height);
    }
  }
}
