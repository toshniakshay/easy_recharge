import 'package:design_system/design_system.dart';
import 'package:design_system/src/widgets/buttons/app_action_button.dart';
import 'package:flutter/material.dart';

enum ActionButtonSize { small, blocked, responsive }

extension ActionButtonSizeExt on ActionButtonSize {
  double get height {
    switch (this) {
      case ActionButtonSize.small:
        return 32.0;
      default:
        return 48.0;
    }
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton._({
    required this.title,
    required this.onClick,
    required ActionButtonSize buttonType,
    this.isLoading = false,
  }) : _buttonType = buttonType;

  final String title;
  final VoidCallback? onClick;
  final ActionButtonSize _buttonType;
  final bool? isLoading;

  factory PrimaryButton.responsive({
    Key? key,
    required String title,
    required VoidCallback? onClick,
    Widget? icon,
    bool? isLoading,
  }) =>
      PrimaryButton._(
        title: title,
        onClick: onClick,
        buttonType: ActionButtonSize.responsive,
        isLoading: isLoading,
      );

  factory PrimaryButton.blocked({
    Key? key,
    required String title,
    required VoidCallback? onClick,
    Widget? icon,
    bool? isLoading,
  }) =>
      PrimaryButton._(
        title: title,
        onClick: onClick,
        buttonType: ActionButtonSize.blocked,
        isLoading: isLoading,
      );

  factory PrimaryButton.small({
    Key? key,
    required String title,
    required VoidCallback? onClick,
    Widget? icon,
    bool? isLoading,
  }) =>
      PrimaryButton._(
        title: title,
        onClick: onClick,
        buttonType: ActionButtonSize.small,
        isLoading: isLoading,
      );

  @override
  Widget build(BuildContext context) {
    return AppActionButton(
      key: key,
      title: title,
      onClick: onClick,
      buttonType: _buttonType,
      activeTitleColor: GlobalThemData.lightColorScheme.onPrimary,
      disabledTitleColor: Colors.black45,
      buttonColor: GlobalThemData.lightColorScheme.primary,
      isLoading: isLoading ?? false,
    );
  }
}
