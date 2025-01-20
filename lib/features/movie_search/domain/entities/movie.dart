import 'package:movieapp/core/cache/core/cache_model.dart';

class Movie with CacheModel {
  const Movie({
    required this.movieId,
    required this.originalTitle,
    required this.posterPath,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  Movie.empty()
      : movieId = 0,
        originalTitle = '',
        posterPath = null,
        overview = '',
        voteAverage = 0.0,
        releaseDate = '';

  final int movieId;
  final String originalTitle;
  final String? posterPath;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  @override
  String get id => movieId.toString();

  @override
  Map<String, dynamic> toJson() {
    return {
      'movieId': movieId,
      'originalTitle': originalTitle,
      'posterPath': posterPath,
      'overview': overview,
      'voteAverage': voteAverage,
      'releaseDate': releaseDate,
    };
  }

  @override
  CacheModel fromDynamicJson(dynamic json) {
    final jsonMap = json as Map<String, dynamic>;

    if (jsonMap.isEmpty) {
      return this;
    }

    return Movie(
      movieId: jsonMap['movieId'] as int,
      originalTitle: jsonMap['originalTitle'] as String,
      posterPath: jsonMap['posterPath'] as String?,
      overview: jsonMap['overview'] as String,
      voteAverage: jsonMap['voteAverage'] as double,
      releaseDate: jsonMap['releaseDate'] as String,
    );
  }

  Movie copyWith({
    int? movieId,
    String? originalTitle,
    String? posterPath,
    String? overview,
    double? voteAverage,
    String? releaseDate,
  }) {
    return Movie(
      movieId: movieId ?? this.movieId,
      originalTitle: originalTitle ?? this.originalTitle,
      posterPath: posterPath ?? this.posterPath,
      overview: overview ?? this.overview,
      voteAverage: voteAverage ?? this.voteAverage,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.movieId == movieId &&
        other.originalTitle == originalTitle &&
        other.posterPath == posterPath &&
        other.overview == overview &&
        other.voteAverage == voteAverage &&
        other.releaseDate == releaseDate;
  }

  @override
  int get hashCode {
    return movieId.hashCode ^
        originalTitle.hashCode ^
        posterPath.hashCode ^
        overview.hashCode ^
        voteAverage.hashCode ^
        releaseDate.hashCode;
  }
}
