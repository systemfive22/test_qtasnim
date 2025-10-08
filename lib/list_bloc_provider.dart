import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_qtasnim/data/repositories/employee_repository.dart';
import 'package:test_qtasnim/di/app_module.dart';
import 'package:test_qtasnim/features/home/add_employee_screen/add_employee_bloc/add_employee_bloc.dart';
import 'package:test_qtasnim/features/home/employee_bloc/employee_bloc.dart';
import 'package:test_qtasnim/features/main_screen/navigation_bottom_cubit/navigation_bottom_cubit.dart';
import 'package:test_qtasnim/features/setting/theme_cubit/theme_cubit.dart';

class ListBlocProvider {
  static List<BlocProvider> providers = [
    BlocProvider<NavigationBottomCubit>(
      create: (context) => NavigationBottomCubit(),
    ),
    BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
    BlocProvider<EmployeeBloc>(
      create: (context) =>
          EmployeeBloc(employeeRepository: sl<EmployeeRepository>()),
    ),
    BlocProvider<AddEmployeeBloc>(
      create: (context) =>
          AddEmployeeBloc(employeeRepository: sl<EmployeeRepository>()),
    ),
  ];
}
