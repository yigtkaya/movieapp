// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie.dart';

class MovieMapper extends ClassMapperBase<Movie> {
  MovieMapper._();

  static MovieMapper? _instance;
  static MovieMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Movie';

  static int _$id(Movie v) => v.id;
  static const Field<Movie, int> _f$id = Field('id', _$id);
  static String _$originalTitle(Movie v) => v.originalTitle;
  static const Field<Movie, String> _f$originalTitle =
      Field('originalTitle', _$originalTitle);
  static String? _$posterPath(Movie v) => v.posterPath;
  static const Field<Movie, String> _f$posterPath =
      Field('posterPath', _$posterPath);
  static String _$overview(Movie v) => v.overview;
  static const Field<Movie, String> _f$overview = Field('overview', _$overview);
  static double _$voteAverage(Movie v) => v.voteAverage;
  static const Field<Movie, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage);
  static String _$releaseDate(Movie v) => v.releaseDate;
  static const Field<Movie, String> _f$releaseDate =
      Field('releaseDate', _$releaseDate);

  @override
  final MappableFields<Movie> fields = const {
    #id: _f$id,
    #originalTitle: _f$originalTitle,
    #posterPath: _f$posterPath,
    #overview: _f$overview,
    #voteAverage: _f$voteAverage,
    #releaseDate: _f$releaseDate,
  };

  static Movie _instantiate(DecodingData data) {
    return Movie(
        id: data.dec(_f$id),
        originalTitle: data.dec(_f$originalTitle),
        posterPath: data.dec(_f$posterPath),
        overview: data.dec(_f$overview),
        voteAverage: data.dec(_f$voteAverage),
        releaseDate: data.dec(_f$releaseDate));
  }

  @override
  final Function instantiate = _instantiate;

  static Movie fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Movie>(map);
  }

  static Movie fromJson(String json) {
    return ensureInitialized().decodeJson<Movie>(json);
  }
}

mixin MovieMappable {
  String toJson() {
    return MovieMapper.ensureInitialized().encodeJson<Movie>(this as Movie);
  }

  Map<String, dynamic> toMap() {
    return MovieMapper.ensureInitialized().encodeMap<Movie>(this as Movie);
  }

  MovieCopyWith<Movie, Movie, Movie> get copyWith =>
      _MovieCopyWithImpl(this as Movie, $identity, $identity);
  @override
  String toString() {
    return MovieMapper.ensureInitialized().stringifyValue(this as Movie);
  }

  @override
  bool operator ==(Object other) {
    return MovieMapper.ensureInitialized().equalsValue(this as Movie, other);
  }

  @override
  int get hashCode {
    return MovieMapper.ensureInitialized().hashValue(this as Movie);
  }
}

extension MovieValueCopy<$R, $Out> on ObjectCopyWith<$R, Movie, $Out> {
  MovieCopyWith<$R, Movie, $Out> get $asMovie =>
      $base.as((v, t, t2) => _MovieCopyWithImpl(v, t, t2));
}

abstract class MovieCopyWith<$R, $In extends Movie, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? originalTitle,
      String? posterPath,
      String? overview,
      double? voteAverage,
      String? releaseDate});
  MovieCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Movie, $Out>
    implements MovieCopyWith<$R, Movie, $Out> {
  _MovieCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Movie> $mapper = MovieMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? originalTitle,
          Object? posterPath = $none,
          String? overview,
          double? voteAverage,
          String? releaseDate}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (originalTitle != null) #originalTitle: originalTitle,
        if (posterPath != $none) #posterPath: posterPath,
        if (overview != null) #overview: overview,
        if (voteAverage != null) #voteAverage: voteAverage,
        if (releaseDate != null) #releaseDate: releaseDate
      }));
  @override
  Movie $make(CopyWithData data) => Movie(
      id: data.get(#id, or: $value.id),
      originalTitle: data.get(#originalTitle, or: $value.originalTitle),
      posterPath: data.get(#posterPath, or: $value.posterPath),
      overview: data.get(#overview, or: $value.overview),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate));

  @override
  MovieCopyWith<$R2, Movie, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MovieCopyWithImpl($value, $cast, t);
}
