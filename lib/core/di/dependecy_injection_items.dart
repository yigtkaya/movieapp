import 'package:movieapp/core/cache/product_cache.dart';
import 'package:movieapp/core/di/dependecy_injection.dart';
import 'package:movieapp/core/network/api_client.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';
import 'package:movieapp/localization/cubit/language_cubit.dart';

/// Dependency injection items class.
final class DepInItems {
  const DepInItems._();

  /// Get the product cache.
  static ProductCache get productCache => DependencyInjection.read<ProductCache>();

  /// Get the language cubit.
  static LanguageCubit get languageCubit => DependencyInjection.read<LanguageCubit>();

  /// Get the movie search cubit.
  static MovieSearchCubit get movieSearchCubit => DependencyInjection.read<MovieSearchCubit>();

  /// Get the API client.
  static ApiClient get apiClient => DependencyInjection.read<ApiClient>();
}
