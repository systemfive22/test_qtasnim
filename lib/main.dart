import 'package:flutter/material.dart';
import 'package:test_qtasnim/app.dart';
import 'package:test_qtasnim/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await bootstrap(MyApp.new);
}
