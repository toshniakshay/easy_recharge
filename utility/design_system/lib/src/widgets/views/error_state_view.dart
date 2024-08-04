import 'package:design_system/src/constants.dart';
import 'package:design_system/src/icons/AppIcons.dart';
import 'package:design_system/src/theme/spaces.dart';
import 'package:design_system/src/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class ErrorStateView extends StatelessWidget {
  const ErrorStateView({
    this.title,
    this.subTitle,
    this.onRetry,
    this.errorIcon,
    this.actionLabel,
    super.key,
  });

  final String? title;
  final String? subTitle;
  final Widget? errorIcon;
  final VoidCallback? onRetry;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    final errorImage = errorIcon ?? AppIcons.error();

    final widgets = <Widget>[
      errorImage,
      SizedBox(height: xs),
      if (title != null) ...{
        Center(
          child: Text(
            title!,
            textAlign: TextAlign.center,
          ),
        ),
      },
      SizedBox(height: xs),
      Center(
        child: Text(
          subTitle ?? Constants.somethingWentWrong,
          textAlign: TextAlign.center,
        ),
      ),
      if (onRetry != null) ...{
        const SizedBox(height: md),
        Center(
          child: PrimaryButton.small(
            title: Constants.retry,
            onClick: () => onRetry,
            isLoading: false,
          ),
        )
      }
    ];
    return Padding(
      padding: EdgeInsets.all(xs),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widgets,
      ),
    );
  }
}
