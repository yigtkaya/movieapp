import 'package:movieapp/core/cache/core/cache_manager.dart';
import 'package:movieapp/core/cache/hive/hive_operation.dart';
import 'package:movieapp/features/movie_search/domain/entities/movie.dart';

/// ProductCache is a class that manages the cache for the app.
final class ProductCache {
  /// Constructor for ProductCache.
  ProductCache({
    required CacheManager cacheManager,
  }) : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  /// Initialize the cache.
  Future<void> init() async {
    await _cacheManager.init(
      cacheModels: [
        Movie.empty(),
      ],
    );
  }

  /// User cache operation.
  late final userCacheOperation = HiveCacheOperation<Movie>();
}
