import 'package:flutter/material.dart';

class MaintainStateWidget extends StatefulWidget {
  const MaintainStateWidget({required this.child, super.key});

  final Widget child;

  @override
  State<MaintainStateWidget> createState() => _MaintainStateWidgetState();
}

class _MaintainStateWidgetState extends State<MaintainStateWidget>
    with AutomaticKeepAliveClientMixin<MaintainStateWidget> {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
