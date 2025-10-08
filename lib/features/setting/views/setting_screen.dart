import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_qtasnim/core/common/widgets/custom_appbar.dart';
import 'package:test_qtasnim/features/setting/theme_cubit/theme_cubit.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    final state = context.watch<ThemeCubit>().state;

    return Scaffold(
      appBar: customAppBar(title: 'Settings', isDrawer: true, context: context),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Theme Mode', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          SegmentedButton<ThemeMode>(
            segments: const [
              ButtonSegment(value: ThemeMode.light, label: Text('Light')),
              ButtonSegment(value: ThemeMode.system, label: Text('System')),
              ButtonSegment(value: ThemeMode.dark, label: Text('Dark')),
            ],
            selected: {state.themeMode},
            onSelectionChanged: (newSelection) {
              themeCubit.setThemeMode(newSelection.first);
            },
          ),
        ],
      ),
    );
  }
}
