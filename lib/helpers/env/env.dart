// lib/helpers/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: String.fromEnvironment('ENV_FILE', defaultValue: '.env.dev'))
abstract class Env {
  // APP
  @EnviedField(varName: 'APP_PROJECT_NAME')
  static const String appProjectName = _Env.appProjectName;
  @EnviedField(varName: 'APP_VERSION')
  static const String appVersion = _Env.appVersion;

  // API
  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  static final String apiBaseUrl = _Env.apiBaseUrl;
  @EnviedField(varName: 'API_AUTH', obfuscate: true)
  static final String apiAuth = _Env.apiAuth;
}
