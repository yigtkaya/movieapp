import 'package:movieapp/core/cubit/base_cubit.dart';
import 'package:movieapp/features/movie_search/domain/entities/movie.dart';

enum MovieSearchStatus {
  initial,
  loading,
  loaded,
  error,
}

final class MovieSearchState extends BaseState {
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
  final MovieSearchStatus status;
  final List<Movie> movies;
  final String? errorMessage;

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
  List<Object?> get props => [status, movies, errorMessage];
}
