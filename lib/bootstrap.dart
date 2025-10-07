import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:test_qtasnim/core/utils/bloc_observer/bloc_observer.dart';
import 'package:test_qtasnim/di/app_module.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder, {
  String environment = 'development',
}) async {
  if (kDebugMode) {
    Bloc.observer = AppBlocObserver();
  }
  configureDependencies(environment: environment);

  FlutterError.onError = (details) {
    logger.e(
      'FlutterError caught',
      error: details.exception,
      stackTrace: details.stack,
    );
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(
      'Uncaught error in PlatformDispatcher',
      error: error,
      stackTrace: stack,
    );
    return true;
  };

  final app = await builder();
  runApp(app);
}
