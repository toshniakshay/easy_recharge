// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:core/core.dart' as _i5;
import 'package:easy_recharge/src/router/holder_pages/add_beneficiary_page.dart'
    as _i1;
import 'package:easy_recharge/src/router/holder_pages/app_dashboard_page.dart'
    as _i2;
import 'package:easy_recharge/src/router/holder_pages/recharge_page.dart'
    as _i3;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.AppAddBeneficiaryPage]
class AppAddBeneficiaryRoute extends _i4.PageRouteInfo<void> {
  const AppAddBeneficiaryRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AppAddBeneficiaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppAddBeneficiaryRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppAddBeneficiaryPage();
    },
  );
}

/// generated route for
/// [_i2.AppDashboardPage]
class AppDashboardRoute extends _i4.PageRouteInfo<void> {
  const AppDashboardRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AppDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppDashboardRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.AppDashboardPage();
    },
  );
}

/// generated route for
/// [_i3.AppRechargePage]
class AppRechargeRoute extends _i4.PageRouteInfo<AppRechargeRouteArgs> {
  AppRechargeRoute({
    required _i5.Beneficiary beneficiary,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          AppRechargeRoute.name,
          args: AppRechargeRouteArgs(
            beneficiary: beneficiary,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AppRechargeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppRechargeRouteArgs>();
      return _i3.AppRechargePage(
        beneficiary: args.beneficiary,
        key: args.key,
      );
    },
  );
}

class AppRechargeRouteArgs {
  const AppRechargeRouteArgs({
    required this.beneficiary,
    this.key,
  });

  final _i5.Beneficiary beneficiary;

  final _i6.Key? key;

  @override
  String toString() {
    return 'AppRechargeRouteArgs{beneficiary: $beneficiary, key: $key}';
  }
}
