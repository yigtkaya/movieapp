import 'package:movieapp/features/movie_search/domain/entities/movie.dart';

enum MovieSearchStatus {
  initial,
  loading,
  loaded,
  error,
}

class MovieSearchState {
  final MovieSearchStatus status;
  final List<Movie> movies;
  final String? errorMessage;

  const MovieSearchState({
    required this.status,
    this.movies = const [],
    this.errorMessage,
  });

  factory MovieSearchState.initial() => const MovieSearchState(
        status: MovieSearchStatus.initial,
      );

  factory MovieSearchState.loading() => const MovieSearchState(
        status: MovieSearchStatus.loading,
      );

  factory MovieSearchState.loaded(List<Movie> movies) => MovieSearchState(
        status: MovieSearchStatus.loaded,
        movies: movies,
      );

  factory MovieSearchState.error(String message) => MovieSearchState(
        status: MovieSearchStatus.error,
        errorMessage: message,
      );

  MovieSearchState copyWith({
    MovieSearchStatus? status,
    List<Movie>? movies,
    String? errorMessage,
  }) {
    return MovieSearchState(
      status: status ?? this.status,
      movies: movies ?? this.movies,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MovieSearchState &&
        other.status == status &&
        other.errorMessage == errorMessage &&
        _listEquals(other.movies, movies);
  }

  bool _listEquals<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  @override
  int get hashCode => Object.hash(
        status,
        Object.hashAll(movies),
        errorMessage,
      );
}
