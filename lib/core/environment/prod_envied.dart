import 'package:envied/envied.dart';
import 'package:movieapp/core/environment/app_configuration.dart';

part 'prod_envied.g.dart';

/// The development environment
@Envied(path: '.env', obfuscate: true)
final class ProdEnv implements AppConfiguration {
  /// The news api key
  @EnviedField(varName: 'MOVIE_API_KEY')
  static final String _newsApiKey = _ProdEnv._newsApiKey;

  /// The base url
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;

  @override
  String get newsApiKey => _newsApiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get environment => 'production';
}
