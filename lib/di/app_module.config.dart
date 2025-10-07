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
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i661.NetworkImplement>(
      () => _i661.NetworkImplement(gh<_i361.Dio>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i460.RegisterModule {}
