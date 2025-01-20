import 'package:movieapp/features/movie_search/domain/entities/movie.dart';
import 'package:movieapp/features/movie_search/domain/repositories/movie_repository.dart';

class SearchMovies {
  const SearchMovies(this._repository);

  final MovieRepository _repository;

  Future<List<Movie>> call(String query) {
    if (query.length < 2) {
      return Future.value([]);
    }

    return _repository.searchMovies(query);
  }
}
