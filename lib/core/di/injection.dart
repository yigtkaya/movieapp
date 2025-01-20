import 'package:get_it/get_it.dart';
import 'package:movieapp/core/network/api_client.dart';
import 'package:movieapp/features/movie_search/data/repositories/movie_repository_impl.dart';
import 'package:movieapp/features/movie_search/domain/repositories/movie_repository.dart';
import 'package:movieapp/features/movie_search/domain/usecases/search_movies.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // External
  // await getIt.registerSingletonAsync(() => SharedPreferences.getInstance());

  // Core
  // getIt.registerLazySingleton(() => NetworkInfo(getIt()));
  getIt.registerLazySingleton(() => ApiClient());

  // Features - Movie Search
  // Bloc

  // Use cases

  // Repository

  // Data sources

  // Features - Movie Search
  // Cubit
  getIt
    ..registerFactory(
      () => MovieSearchCubit(
        getIt(),
      ),
    )

    // Use cases
    ..registerLazySingleton(() => SearchMovies(getIt()))

    // Repository
    ..registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(
        getIt(),
      ),
    );
}
