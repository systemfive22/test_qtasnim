import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_qtasnim/di/app_module.dart';
import 'package:test_qtasnim/features/setting/theme_cubit/theme_cubit.dart';
import 'package:test_qtasnim/list_bloc_provider.dart';
import 'package:test_qtasnim/routing/route.dart';

final appRoute = sl<AppRouter>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: ListBlocProvider.providers,
      child: OrientationBuilder(
        builder: (context, orientation) {
          return ScreenUtilInit(
            designSize: orientation == Orientation.portrait
                ? const Size(1080, 1920)
                /// Portrait design size
                : const Size(1920, 1080),

            /// Landscape design size
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, _) {
              return BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return MaterialApp.router(
                    routerConfig: appRoute.config(
                      navigatorObservers: () => [AutoRouterObserver()],
                      deepLinkBuilder: (deepLink) {
                        if (deepLink.path.startsWith("/invoice")) {
                          /// Do something
                          return deepLink;
                        } else {
                          return DeepLink.defaultPath;
                        }
                      },
                    ),
                    theme: ThemeData.light(),
                    darkTheme: ThemeData.dark(),
                    themeMode: state.themeMode,
                    title: 'Test Qtasnim',
                    debugShowCheckedModeBanner: false,
                    localeResolutionCallback: (locale, supportedLocales) {
                      for (var supportedLocale in supportedLocales) {
                        if (supportedLocale.languageCode ==
                                locale?.languageCode &&
                            supportedLocale.countryCode ==
                                locale?.countryCode) {
                          return supportedLocale;
                        }
                      }
                      // If the locale of the device is not supported, use the first one
                      return supportedLocales.first;
                    },
                    builder: (ctx, child) {
                      return MediaQuery(
                        data: MediaQuery.of(ctx).copyWith(),
                        child: ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: child!,
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
