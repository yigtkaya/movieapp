// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_search_state.dart';

class MovieSearchStateMapper extends ClassMapperBase<MovieSearchState> {
  MovieSearchStateMapper._();

  static MovieSearchStateMapper? _instance;
  static MovieSearchStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieSearchStateMapper._());
      MovieSearchInitialMapper.ensureInitialized();
      MovieSearchLoadingMapper.ensureInitialized();
      MovieSearchLoadedMapper.ensureInitialized();
      MovieSearchErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieSearchState';

  @override
  final MappableFields<MovieSearchState> fields = const {};

  static MovieSearchState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('MovieSearchState');
  }

  @override
  final Function instantiate = _instantiate;

  static MovieSearchState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieSearchState>(map);
  }

  static MovieSearchState fromJson(String json) {
    return ensureInitialized().decodeJson<MovieSearchState>(json);
  }
}

mixin MovieSearchStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MovieSearchStateCopyWith<MovieSearchState, MovieSearchState, MovieSearchState>
      get copyWith;
}

abstract class MovieSearchStateCopyWith<$R, $In extends MovieSearchState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  MovieSearchStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class MovieSearchInitialMapper extends ClassMapperBase<MovieSearchInitial> {
  MovieSearchInitialMapper._();

  static MovieSearchInitialMapper? _instance;
  static MovieSearchInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieSearchInitialMapper._());
      MovieSearchStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieSearchInitial';

  @override
  final MappableFields<MovieSearchInitial> fields = const {};

  static MovieSearchInitial _instantiate(DecodingData data) {
    return MovieSearchInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static MovieSearchInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieSearchInitial>(map);
  }

  static MovieSearchInitial fromJson(String json) {
    return ensureInitialized().decodeJson<MovieSearchInitial>(json);
  }
}

mixin MovieSearchInitialMappable {
  String toJson() {
    return MovieSearchInitialMapper.ensureInitialized()
        .encodeJson<MovieSearchInitial>(this as MovieSearchInitial);
  }

  Map<String, dynamic> toMap() {
    return MovieSearchInitialMapper.ensureInitialized()
        .encodeMap<MovieSearchInitial>(this as MovieSearchInitial);
  }

  MovieSearchInitialCopyWith<MovieSearchInitial, MovieSearchInitial,
          MovieSearchInitial>
      get copyWith => _MovieSearchInitialCopyWithImpl(
          this as MovieSearchInitial, $identity, $identity);
  @override
  String toString() {
    return MovieSearchInitialMapper.ensureInitialized()
        .stringifyValue(this as MovieSearchInitial);
  }

  @override
  bool operator ==(Object other) {
    return MovieSearchInitialMapper.ensureInitialized()
        .equalsValue(this as MovieSearchInitial, other);
  }

  @override
  int get hashCode {
    return MovieSearchInitialMapper.ensureInitialized()
        .hashValue(this as MovieSearchInitial);
  }
}

extension MovieSearchInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieSearchInitial, $Out> {
  MovieSearchInitialCopyWith<$R, MovieSearchInitial, $Out>
      get $asMovieSearchInitial =>
          $base.as((v, t, t2) => _MovieSearchInitialCopyWithImpl(v, t, t2));
}

abstract class MovieSearchInitialCopyWith<$R, $In extends MovieSearchInitial,
    $Out> implements MovieSearchStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  MovieSearchInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieSearchInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieSearchInitial, $Out>
    implements MovieSearchInitialCopyWith<$R, MovieSearchInitial, $Out> {
  _MovieSearchInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieSearchInitial> $mapper =
      MovieSearchInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  MovieSearchInitial $make(CopyWithData data) => MovieSearchInitial();

  @override
  MovieSearchInitialCopyWith<$R2, MovieSearchInitial, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieSearchInitialCopyWithImpl($value, $cast, t);
}

class MovieSearchLoadingMapper extends ClassMapperBase<MovieSearchLoading> {
  MovieSearchLoadingMapper._();

  static MovieSearchLoadingMapper? _instance;
  static MovieSearchLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieSearchLoadingMapper._());
      MovieSearchStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieSearchLoading';

  @override
  final MappableFields<MovieSearchLoading> fields = const {};

  static MovieSearchLoading _instantiate(DecodingData data) {
    return MovieSearchLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static MovieSearchLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieSearchLoading>(map);
  }

  static MovieSearchLoading fromJson(String json) {
    return ensureInitialized().decodeJson<MovieSearchLoading>(json);
  }
}

mixin MovieSearchLoadingMappable {
  String toJson() {
    return MovieSearchLoadingMapper.ensureInitialized()
        .encodeJson<MovieSearchLoading>(this as MovieSearchLoading);
  }

  Map<String, dynamic> toMap() {
    return MovieSearchLoadingMapper.ensureInitialized()
        .encodeMap<MovieSearchLoading>(this as MovieSearchLoading);
  }

  MovieSearchLoadingCopyWith<MovieSearchLoading, MovieSearchLoading,
          MovieSearchLoading>
      get copyWith => _MovieSearchLoadingCopyWithImpl(
          this as MovieSearchLoading, $identity, $identity);
  @override
  String toString() {
    return MovieSearchLoadingMapper.ensureInitialized()
        .stringifyValue(this as MovieSearchLoading);
  }

  @override
  bool operator ==(Object other) {
    return MovieSearchLoadingMapper.ensureInitialized()
        .equalsValue(this as MovieSearchLoading, other);
  }

  @override
  int get hashCode {
    return MovieSearchLoadingMapper.ensureInitialized()
        .hashValue(this as MovieSearchLoading);
  }
}

extension MovieSearchLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieSearchLoading, $Out> {
  MovieSearchLoadingCopyWith<$R, MovieSearchLoading, $Out>
      get $asMovieSearchLoading =>
          $base.as((v, t, t2) => _MovieSearchLoadingCopyWithImpl(v, t, t2));
}

abstract class MovieSearchLoadingCopyWith<$R, $In extends MovieSearchLoading,
    $Out> implements MovieSearchStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  MovieSearchLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieSearchLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieSearchLoading, $Out>
    implements MovieSearchLoadingCopyWith<$R, MovieSearchLoading, $Out> {
  _MovieSearchLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieSearchLoading> $mapper =
      MovieSearchLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  MovieSearchLoading $make(CopyWithData data) => MovieSearchLoading();

  @override
  MovieSearchLoadingCopyWith<$R2, MovieSearchLoading, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieSearchLoadingCopyWithImpl($value, $cast, t);
}

class MovieSearchLoadedMapper extends ClassMapperBase<MovieSearchLoaded> {
  MovieSearchLoadedMapper._();

  static MovieSearchLoadedMapper? _instance;
  static MovieSearchLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieSearchLoadedMapper._());
      MovieSearchStateMapper.ensureInitialized();
      MovieMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieSearchLoaded';

  static List<Movie> _$movies(MovieSearchLoaded v) => v.movies;
  static const Field<MovieSearchLoaded, List<Movie>> _f$movies =
      Field('movies', _$movies);

  @override
  final MappableFields<MovieSearchLoaded> fields = const {
    #movies: _f$movies,
  };

  static MovieSearchLoaded _instantiate(DecodingData data) {
    return MovieSearchLoaded(data.dec(_f$movies));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieSearchLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieSearchLoaded>(map);
  }

  static MovieSearchLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<MovieSearchLoaded>(json);
  }
}

mixin MovieSearchLoadedMappable {
  String toJson() {
    return MovieSearchLoadedMapper.ensureInitialized()
        .encodeJson<MovieSearchLoaded>(this as MovieSearchLoaded);
  }

  Map<String, dynamic> toMap() {
    return MovieSearchLoadedMapper.ensureInitialized()
        .encodeMap<MovieSearchLoaded>(this as MovieSearchLoaded);
  }

  MovieSearchLoadedCopyWith<MovieSearchLoaded, MovieSearchLoaded,
          MovieSearchLoaded>
      get copyWith => _MovieSearchLoadedCopyWithImpl(
          this as MovieSearchLoaded, $identity, $identity);
  @override
  String toString() {
    return MovieSearchLoadedMapper.ensureInitialized()
        .stringifyValue(this as MovieSearchLoaded);
  }

  @override
  bool operator ==(Object other) {
    return MovieSearchLoadedMapper.ensureInitialized()
        .equalsValue(this as MovieSearchLoaded, other);
  }

  @override
  int get hashCode {
    return MovieSearchLoadedMapper.ensureInitialized()
        .hashValue(this as MovieSearchLoaded);
  }
}

extension MovieSearchLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieSearchLoaded, $Out> {
  MovieSearchLoadedCopyWith<$R, MovieSearchLoaded, $Out>
      get $asMovieSearchLoaded =>
          $base.as((v, t, t2) => _MovieSearchLoadedCopyWithImpl(v, t, t2));
}

abstract class MovieSearchLoadedCopyWith<$R, $In extends MovieSearchLoaded,
    $Out> implements MovieSearchStateCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Movie, MovieCopyWith<$R, Movie, Movie>> get movies;
  @override
  $R call({List<Movie>? movies});
  MovieSearchLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieSearchLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieSearchLoaded, $Out>
    implements MovieSearchLoadedCopyWith<$R, MovieSearchLoaded, $Out> {
  _MovieSearchLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieSearchLoaded> $mapper =
      MovieSearchLoadedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Movie, MovieCopyWith<$R, Movie, Movie>> get movies =>
      ListCopyWith($value.movies, (v, t) => v.copyWith.$chain(t),
          (v) => call(movies: v));
  @override
  $R call({List<Movie>? movies}) =>
      $apply(FieldCopyWithData({if (movies != null) #movies: movies}));
  @override
  MovieSearchLoaded $make(CopyWithData data) =>
      MovieSearchLoaded(data.get(#movies, or: $value.movies));

  @override
  MovieSearchLoadedCopyWith<$R2, MovieSearchLoaded, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieSearchLoadedCopyWithImpl($value, $cast, t);
}

class MovieSearchErrorMapper extends ClassMapperBase<MovieSearchError> {
  MovieSearchErrorMapper._();

  static MovieSearchErrorMapper? _instance;
  static MovieSearchErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieSearchErrorMapper._());
      MovieSearchStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieSearchError';

  static String _$message(MovieSearchError v) => v.message;
  static const Field<MovieSearchError, String> _f$message =
      Field('message', _$message);

  @override
  final MappableFields<MovieSearchError> fields = const {
    #message: _f$message,
  };

  static MovieSearchError _instantiate(DecodingData data) {
    return MovieSearchError(data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieSearchError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieSearchError>(map);
  }

  static MovieSearchError fromJson(String json) {
    return ensureInitialized().decodeJson<MovieSearchError>(json);
  }
}

mixin MovieSearchErrorMappable {
  String toJson() {
    return MovieSearchErrorMapper.ensureInitialized()
        .encodeJson<MovieSearchError>(this as MovieSearchError);
  }

  Map<String, dynamic> toMap() {
    return MovieSearchErrorMapper.ensureInitialized()
        .encodeMap<MovieSearchError>(this as MovieSearchError);
  }

  MovieSearchErrorCopyWith<MovieSearchError, MovieSearchError, MovieSearchError>
      get copyWith => _MovieSearchErrorCopyWithImpl(
          this as MovieSearchError, $identity, $identity);
  @override
  String toString() {
    return MovieSearchErrorMapper.ensureInitialized()
        .stringifyValue(this as MovieSearchError);
  }

  @override
  bool operator ==(Object other) {
    return MovieSearchErrorMapper.ensureInitialized()
        .equalsValue(this as MovieSearchError, other);
  }

  @override
  int get hashCode {
    return MovieSearchErrorMapper.ensureInitialized()
        .hashValue(this as MovieSearchError);
  }
}

extension MovieSearchErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MovieSearchError, $Out> {
  MovieSearchErrorCopyWith<$R, MovieSearchError, $Out>
      get $asMovieSearchError =>
          $base.as((v, t, t2) => _MovieSearchErrorCopyWithImpl(v, t, t2));
}

abstract class MovieSearchErrorCopyWith<$R, $In extends MovieSearchError, $Out>
    implements MovieSearchStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  MovieSearchErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MovieSearchErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieSearchError, $Out>
    implements MovieSearchErrorCopyWith<$R, MovieSearchError, $Out> {
  _MovieSearchErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieSearchError> $mapper =
      MovieSearchErrorMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  MovieSearchError $make(CopyWithData data) =>
      MovieSearchError(data.get(#message, or: $value.message));

  @override
  MovieSearchErrorCopyWith<$R2, MovieSearchError, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieSearchErrorCopyWithImpl($value, $cast, t);
}
