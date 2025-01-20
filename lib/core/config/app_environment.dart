import 'package:flutter/foundation.dart';

abstract class AppEnvironment {
  static late final IEnvironment _environment;

  static String get apiKey => _environment.apiKey;
  static String get baseUrl => _environment.baseUrl;

  static void setup({
    required IEnvironment configuration,
  }) {
    _environment = configuration;
  }
}

abstract class IEnvironment {
  String get apiKey;
  String get baseUrl;
}

class DevEnv implements IEnvironment {
  @override
  String get apiKey => const String.fromEnvironment(
        'API_KEY',
        defaultValue: 'YOUR_TMDB_API_KEY',
      );

  @override
  String get baseUrl => 'https://api.themoviedb.org/3';
}

class ProdEnv implements IEnvironment {
  @override
  String get apiKey => const String.fromEnvironment('API_KEY');

  @override
  String get baseUrl => 'https://api.themoviedb.org/3';
}
