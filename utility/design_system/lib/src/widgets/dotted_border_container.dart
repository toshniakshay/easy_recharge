import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DashedContainer extends StatelessWidget {
  const DashedContainer({
    required this.child,
    this.backgroundColor,
    this.dashColor,
    this.width,
    this.padding = 8.0,
    super.key,
  });

  final Color? backgroundColor;
  final Widget child;
  final Color? dashColor;
  final double padding;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(10),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: child,
        ),
        color: dashColor ?? Theme.of(context).disabledColor,
      ),
    );
  }
}
