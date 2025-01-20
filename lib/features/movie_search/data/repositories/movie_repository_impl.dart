import 'package:movieapp/core/cache/cache_manager.dart';
import 'package:movieapp/core/network/api_client.dart';
import 'package:movieapp/features/movie_search/data/models/movie_model.dart';
import 'package:movieapp/features/movie_search/domain/entities/movie.dart';
import 'package:movieapp/features/movie_search/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<List<Movie>> searchMovies(String query) async {
    // Try to get cached data first
    final cachedMovies = CacheManager.getCachedMovies(query);
    if (cachedMovies != null) {
      return cachedMovies.map(MovieModelMapper.fromMap).map((model) => model.toEntity()).toList();
    }

    // If no cached data, fetch from API
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/search/movie',
      queryParameters: {'query': query},
    );

    final results = response.data?['results'] as List<dynamic>?;

    if (results == null) {
      return [];
    }

    final movies = results.map((json) => json as Map<String, dynamic>).toList();

    // Cache the results
    await CacheManager.cacheMovies(query, movies);

    return movies.map(MovieModelMapper.fromMap).map((model) => model.toEntity()).toList();
  }
}
