import 'package:envied/envied.dart';
import 'package:injectable/injectable.dart';
import 'package:test_qtasnim/core/utils/env/env.dart';

part 'env_development.g.dart';

@Injectable(as: Env, env: ['development'], order: -1)
@Envied(path: '.env.development')
class EnvDevelopment implements Env {
  @override
  @EnviedField(varName: 'API_URL')
  String apiUrl = _EnvDevelopment.apiUrl;
}
