import 'package:design_system/src/theme/spaces.dart';
import 'package:flutter/material.dart';

const double imageFaceSize = 100.0;

class EmptyStateView extends StatelessWidget {
  const EmptyStateView({
    required this.image,
    required this.title,
    required this.subTitle,
    this.padding = _defaultPadding,
    this.bottomWidget,
    super.key,
  });

  final EdgeInsetsGeometry? padding;
  final Widget image;
  final String title;
  final String subTitle;
  final Widget? bottomWidget;

  static const _defaultPadding = EdgeInsets.only(
    top: xl,
    left: xs,
    right: xs,
    bottom: xs,
  );

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: imageFaceSize,
        width: imageFaceSize,
        child: image,
      ),
      const SizedBox(height: sm),
      Text(title),
      const SizedBox(height: xs),
      Text(subTitle),
      if (bottomWidget != null) ...{
        const SizedBox(height: sm),
        bottomWidget!
      }
    ],
  );
}
