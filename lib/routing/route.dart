import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_qtasnim/routing/route.gr.dart';
import 'package:injectable/injectable.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
@lazySingleton
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SettingsRoute.page),
      ],
    ),
  ];
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
