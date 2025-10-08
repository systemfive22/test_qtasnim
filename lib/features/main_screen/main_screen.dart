import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_qtasnim/core/themes/theme.dart';
import 'package:test_qtasnim/features/main_screen/navigation_bottom_cubit/navigation_bottom_cubit.dart';
import 'package:test_qtasnim/routing/route.gr.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<PageRouteInfo> _routes = const [HomeRoute(), SettingsRoute()];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return BlocListener<NavigationBottomCubit, NavigationBottomState>(
          listener: (context, state) {
            tabsRouter.setActiveIndex(state.selectedIndexBody);
          },
          child: Scaffold(
            body: child,
            bottomNavigationBar:
                BlocBuilder<NavigationBottomCubit, NavigationBottomState>(
                  builder: (context, state) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: MyTheme.color.black.withValues(alpha: 0.2),
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: BottomNavigationBar(
                          backgroundColor: MyTheme.color.cardBlackWhite(
                            context,
                          ),
                          type: BottomNavigationBarType.fixed,
                          items: _mainMenuItems(),
                          currentIndex: state.selectedIndexBody,
                          onTap: (index) {
                            context.read<NavigationBottomCubit>().navigateTo(
                              index,
                            );
                          },
                          // showUnselectedLabels: false,
                          // showSelectedLabels: false,
                        ),
                      ),
                    );
                  },
                ),
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> _mainMenuItems() {
    return <BottomNavigationBarItem>[
      _mainMenuItemWidget('Home', FontAwesomeIcons.house),

      _mainMenuItemWidget('Setting', FontAwesomeIcons.gear),
    ];
  }

  BottomNavigationBarItem _mainMenuItemWidget(
    String menuTitle,
    IconData iconData,
  ) {
    return BottomNavigationBarItem(
      activeIcon: Icon(iconData),
      icon: FaIcon(iconData),
      label: menuTitle,
    );
  }
}
