import 'package:dart_mappable/dart_mappable.dart';

part 'movie.mapper.dart';

@MappableClass()
class Movie with MovieMappable {
  const Movie({
    required this.id,
    required this.originalTitle,
    required this.posterPath,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  final int id;
  final String originalTitle;
  final String? posterPath;
  final String overview;
  final double voteAverage;
  final String releaseDate;
}
