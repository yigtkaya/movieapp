// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_model.dart';

class MovieModelMapper extends ClassMapperBase<MovieModel> {
  MovieModelMapper._();

  static MovieModelMapper? _instance;
  static MovieModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MovieModel';

  static int _$id(MovieModel v) => v.id;
  static const Field<MovieModel, int> _f$id = Field('id', _$id);
  static String _$originalTitle(MovieModel v) => v.originalTitle;
  static const Field<MovieModel, String> _f$originalTitle =
      Field('originalTitle', _$originalTitle, key: 'original_title');
  static String? _$posterPath(MovieModel v) => v.posterPath;
  static const Field<MovieModel, String> _f$posterPath =
      Field('posterPath', _$posterPath, key: 'poster_path');
  static String _$overview(MovieModel v) => v.overview;
  static const Field<MovieModel, String> _f$overview =
      Field('overview', _$overview);
  static double _$voteAverage(MovieModel v) => v.voteAverage;
  static const Field<MovieModel, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: 'vote_average');
  static String _$releaseDate(MovieModel v) => v.releaseDate;
  static const Field<MovieModel, String> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: 'release_date');

  @override
  final MappableFields<MovieModel> fields = const {
    #id: _f$id,
    #originalTitle: _f$originalTitle,
    #posterPath: _f$posterPath,
    #overview: _f$overview,
    #voteAverage: _f$voteAverage,
    #releaseDate: _f$releaseDate,
  };

  static MovieModel _instantiate(DecodingData data) {
    return MovieModel(
        id: data.dec(_f$id),
        originalTitle: data.dec(_f$originalTitle),
        posterPath: data.dec(_f$posterPath),
        overview: data.dec(_f$overview),
        voteAverage: data.dec(_f$voteAverage),
        releaseDate: data.dec(_f$releaseDate));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieModel>(map);
  }

  static MovieModel fromJson(String json) {
    return ensureInitialized().decodeJson<MovieModel>(json);
  }
}

mixin MovieModelMappable {
  String toJson() {
    return MovieModelMapper.ensureInitialized()
        .encodeJson<MovieModel>(this as MovieModel);
  }

  Map<String, dynamic> toMap() {
    return MovieModelMapper.ensureInitialized()
        .encodeMap<MovieModel>(this as MovieModel);
  }

  MovieModelCopyWith<MovieModel, MovieModel, MovieModel> get copyWith =>
      _MovieModelCopyWithImpl(this as MovieModel, $identity, $identity);
  @override
  String toString() {
    return MovieModelMapper.ensureInitialized()
        .stringifyValue(this as MovieModel);
  }

  @override
  bool operator ==(Object other) {
    return MovieModelMapper.ensureInitialized()
        .equalsValue(this as MovieModel, other);
  }

  @override
  int get hashCode {
    return MovieModelMapper.ensureInitialized().hashValue(this as MovieModel);
  }
}

extension MovieModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieModel, $Out> {
  MovieModelCopyWith<$R, MovieModel, $Out> get $asMovieModel =>
      $base.as((v, t, t2) => _MovieModelCopyWithImpl(v, t, t2));
}

abstract class MovieModelCopyWith<$R, $In extends MovieModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? originalTitle,
      String? posterPath,
      String? overview,
      double? voteAverage,
      String? releaseDate});
  MovieModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieModel, $Out>
    implements MovieModelCopyWith<$R, MovieModel, $Out> {
  _MovieModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieModel> $mapper =
      MovieModelMapper.ensureInitialized();
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
  MovieModel $make(CopyWithData data) => MovieModel(
      id: data.get(#id, or: $value.id),
      originalTitle: data.get(#originalTitle, or: $value.originalTitle),
      posterPath: data.get(#posterPath, or: $value.posterPath),
      overview: data.get(#overview, or: $value.overview),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate));

  @override
  MovieModelCopyWith<$R2, MovieModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieModelCopyWithImpl($value, $cast, t);
}
