import 'package:movieapp/core/network/api_client.dart';
import 'package:movieapp/core/network/network_mixin.dart';
import 'package:movieapp/features/movie_search/data/models/movie_model.dart';
import 'package:movieapp/features/movie_search/domain/entities/movie.dart';
import 'package:movieapp/features/movie_search/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl with NetworkMixin implements MovieRepository {
  MovieRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<List<Movie>> searchMovies(String query) async {
    return networkRequest(() async {
      final response = await _apiClient.get<Map<String, dynamic>>(
        '/search/movie',
        queryParameters: {'query': query},
      );

      final results = response.data?['results'] as List<dynamic>?;

      if (results == null) {
        return [];
      }

      return results
          .map((json) => MovieModel.fromJson(json as Map<String, dynamic>))
          .map((model) => model.toEntity())
          .toList();
    });
  }
}
