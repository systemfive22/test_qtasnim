// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/utils/env/env.dart' as _i803;
import '../core/utils/env/env_development.dart' as _i3;
import '../data/network/network_impl.dart' as _i661;
import '../data/repositories/employee_repository.dart' as _i1030;
import '../features/home/add_employee_screen/add_employee_bloc/add_employee_bloc.dart'
    as _i988;
import '../features/home/employee_bloc/employee_bloc.dart' as _i937;
import '../features/main_screen/navigation_bottom_cubit/navigation_bottom_cubit.dart'
    as _i27;
import '../features/setting/theme_cubit/theme_cubit.dart' as _i184;
import '../routing/route.dart' as _i290;
import 'app_module.dart' as _i460;

const String _development = 'development';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i803.Env>(
      () => _i3.EnvDevelopment(),
      registerFor: {_development},
    );
    gh.factory<_i184.ThemeCubit>(() => _i184.ThemeCubit());
    gh.factory<_i27.NavigationBottomCubit>(() => _i27.NavigationBottomCubit());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i290.AppRouter>(() => _i290.AppRouter());
    gh.lazySingleton<_i661.NetworkImplement>(
      () => _i661.NetworkImplement(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i1030.EmployeeRepository>(
      () => _i1030.EmployeeRepository(
        networkImplement: gh<_i661.NetworkImplement>(),
      ),
    );
    gh.factory<_i988.AddEmployeeBloc>(
      () => _i988.AddEmployeeBloc(
        employeeRepository: gh<_i1030.EmployeeRepository>(),
      ),
    );
    gh.factory<_i937.EmployeeBloc>(
      () => _i937.EmployeeBloc(
        employeeRepository: gh<_i1030.EmployeeRepository>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i460.RegisterModule {}
