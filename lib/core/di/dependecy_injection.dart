import 'package:get_it/get_it.dart';
import 'package:movieapp/core/cache/hive/hive_manager.dart';
import 'package:movieapp/core/cache/product_cache.dart';
import 'package:movieapp/core/network/api_client.dart';
import 'package:movieapp/features/movie_search/data/repositories/movie_repository_impl.dart';
import 'package:movieapp/features/movie_search/domain/repositories/movie_repository.dart';
import 'package:movieapp/localization/cubit/language_cubit.dart';

/// Dependency injection class.
final class DependencyInjection {
  const DependencyInjection._();

  static final _getIt = GetIt.I;

  /// Setup the dependency injection.
  static void setup() {
    _getIt.registerSingleton(
      ProductCache(
        cacheManager: HiveManager(),
      ),
    );

    languageSetup();
    networkSetup();
  }

  /// Setup the language dependency injection.
  static void languageSetup() {
    _getIt.registerLazySingleton(LanguageCubit.new);
  }

  /// Setup the network dependency injection.
  static void networkSetup() {
    final apiClient = ApiClient();

    _getIt
      ..registerLazySingleton(() => apiClient)
      ..registerLazySingleton<MovieRepository>(
        () => MovieRepositoryImpl(_getIt()),
      );
  }

  /// Read an object from the dependency injection.
  static T read<T extends Object>() => _getIt<T>();
}
