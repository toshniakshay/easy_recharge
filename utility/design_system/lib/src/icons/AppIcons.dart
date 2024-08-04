import 'package:design_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class AppIcons {
  const AppIcons._();

  static Widget success() {
    return SvgPicture.asset(
      Assets.success,
      package: 'design_system',
      height: 30,
      width: 30,
      colorFilter: ColorFilter.mode(
        Colors.green,
        BlendMode.srcIn,
      ),
    );
  }

  static Widget warning() {
    return SvgPicture.asset(
      Assets.warning,
      package: 'design_system',
      height: 30,
      width: 30,
      colorFilter: ColorFilter.mode(
        Colors.orange,
        BlendMode.srcIn,
      ),
    );
  }

  static Widget error() {
    return SvgPicture.asset(
      Assets.error,
      package: 'design_system',
      height: 30,
      width: 30,
      colorFilter: ColorFilter.mode(
        Colors.red,
        BlendMode.srcIn,
      ),
    );
  }

  static Widget dirham() {
    return SvgPicture.asset(
      Assets.dirham,
      package: 'design_system',
      height: 50,
      width: 50,
      colorFilter: ColorFilter.mode(
        Colors.red,
        BlendMode.srcIn,
      ),
    );
  }
}
