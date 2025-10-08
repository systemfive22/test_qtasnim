import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_qtasnim/core/common/widgets/custom_appbar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Home', isDrawer: true, context: context),
      body: Container(),
    );
  }
}
