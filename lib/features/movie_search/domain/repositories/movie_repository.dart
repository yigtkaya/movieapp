import 'package:movieapp/features/movie_search/domain/entities/movie.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> searchMovies(String query);
}
