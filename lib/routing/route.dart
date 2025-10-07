import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_qtasnim/routing/route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),

    AutoRoute(page: SettingRoute.page),
  ];
  @override
  List<AutoRouteGuard> get guards => [];
}

Widget slideFromRightTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(1.5, 0.0),
      end: Offset.zero,
    ).animate(animation),
    child: child,
  );
}
