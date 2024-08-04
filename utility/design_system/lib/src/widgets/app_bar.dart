import 'package:flutter/material.dart';

class ApplicationTopBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationTopBar({
    required this.title,
    this.preferredAppbarSize,
    super.key,
  });

  final Size? preferredAppbarSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;
    final theme = Theme.of(context);

    return AppBar(
      key: key,
      centerTitle: platform == TargetPlatform.iOS,
      elevation: 1.0,
      title: Column(
        crossAxisAlignment: platform == TargetPlatform.iOS
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.bodyLarge
              ?..copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
