import 'package:movieapp/features/movie_search/domain/entities/movie.dart';

class MovieModel {
  const MovieModel({
    required this.movieId,
    required this.originalTitle,
    required this.posterPath,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      movieId: json['id'] as int,
      originalTitle: json['original_title'] as String,
      posterPath: json['poster_path'] as String?,
      overview: json['overview'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      releaseDate: json['release_date'] as String,
    );
  }

  final int movieId;
  final String originalTitle;
  final String? posterPath;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  Map<String, dynamic> toJson() {
    return {
      'id': movieId,
      'original_title': originalTitle,
      'poster_path': posterPath,
      'overview': overview,
      'vote_average': voteAverage,
      'release_date': releaseDate,
    };
  }

  Movie toEntity() {
    return Movie(
      movieId: movieId,
      originalTitle: originalTitle,
      posterPath: posterPath,
      overview: overview,
      voteAverage: voteAverage,
      releaseDate: releaseDate,
    );
  }
}
