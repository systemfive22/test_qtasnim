// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:test_qtasnim/data/models/employee_model.dart' as _i7;
import 'package:test_qtasnim/features/home/add_employee_screen/add_edit_employee_screen.dart'
    as _i1;
import 'package:test_qtasnim/features/home/views/home_screen.dart' as _i2;
import 'package:test_qtasnim/features/main_screen/main_screen.dart' as _i3;
import 'package:test_qtasnim/features/setting/views/setting_screen.dart' as _i4;

/// generated route for
/// [_i1.AddEditEmployeeScreen]
class AddEditEmployeeRoute extends _i5.PageRouteInfo<AddEditEmployeeRouteArgs> {
  AddEditEmployeeRoute({
    _i6.Key? key,
    _i7.Employee? employee,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         AddEditEmployeeRoute.name,
         args: AddEditEmployeeRouteArgs(key: key, employee: employee),
         initialChildren: children,
       );

  static const String name = 'AddEditEmployeeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddEditEmployeeRouteArgs>(
        orElse: () => const AddEditEmployeeRouteArgs(),
      );
      return _i1.AddEditEmployeeScreen(key: args.key, employee: args.employee);
    },
  );
}

class AddEditEmployeeRouteArgs {
  const AddEditEmployeeRouteArgs({this.key, this.employee});

  final _i6.Key? key;

  final _i7.Employee? employee;

  @override
  String toString() {
    return 'AddEditEmployeeRouteArgs{key: $key, employee: $employee}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddEditEmployeeRouteArgs) return false;
    return key == other.key && employee == other.employee;
  }

  @override
  int get hashCode => key.hashCode ^ employee.hashCode;
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainScreen();
    },
  );
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute({List<_i5.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SettingsScreen();
    },
  );
}
