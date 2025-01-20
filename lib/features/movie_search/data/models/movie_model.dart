import 'package:dart_mappable/dart_mappable.dart';
import 'package:movieapp/features/movie_search/domain/entities/movie.dart';

part 'movie_model.mapper.dart';

@MappableClass()
class MovieModel with MovieModelMappable {
  const MovieModel({
    required this.id,
    @MappableField(key: 'original_title') required this.originalTitle,
    @MappableField(key: 'poster_path') required this.posterPath,
    required this.overview,
    @MappableField(key: 'vote_average') required this.voteAverage,
    @MappableField(key: 'release_date') required this.releaseDate,
  });

  final int id;
  final String originalTitle;
  final String? posterPath;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  Movie toEntity() => Movie(
        id: id,
        originalTitle: originalTitle,
        posterPath: posterPath,
        overview: overview,
        voteAverage: voteAverage,
        releaseDate: releaseDate,
      );

  static const fromJson = MovieModelMapper.fromJson;
}
