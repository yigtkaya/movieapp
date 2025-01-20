import 'package:get_it/get_it.dart';
import 'package:movieapp/core/cache/hive/hive_manager.dart';
import 'package:movieapp/core/cache/product_cache.dart';
import 'package:movieapp/core/network/api_client.dart';
import 'package:movieapp/localization/cubit/language_cubit.dart';

/// Dependency injection class.
final class DependencyInjection {
  const DependencyInjection._();

  static final _getIt = GetIt.I;

  /// Setup the dependency injection.
  static void setup() {
    _getIt.registerSingleton(
      ProductCache(
        cacheManager: HiveManager(),
      ),
    );

    navigationSetup();
    authSetup();
    languageSetup();
    networkSetup();
    newsSetup();
    bookmarksSetup();
  }

  static void bookmarksSetup() {
    _getIt
      ..registerLazySingleton<BookmarksRepository>(
        BookmarksRepositoryImpl.new,
      )
      ..registerLazySingleton(() => GetBookmarkedNewsUsecase(_getIt()))
      ..registerLazySingleton(() => ClearBookmarksUsecase(_getIt()))
      ..registerLazySingleton(() => RemoveBookmarkUsecase(_getIt()))
      ..registerLazySingleton(() => AddBookmarkUsecase(_getIt()))
      ..registerLazySingleton(
        () => BookmarksCubit(
          _getIt(),
          _getIt(),
          _getIt(),
          _getIt(),
        ),
      );
  }

  static void navigationSetup() {
    _getIt.registerLazySingleton(
      BottomNavigationCubit.new,
    );
  }

  /// Setup the authentication dependency injection.
  static void authSetup() {
    // Register Firebase Auth instance
    _getIt
      ..registerLazySingleton(() => FirebaseAuth.instance)

      // Register Repository
      ..registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(_getIt()),
      )

      // Register Use Cases
      ..registerLazySingleton(() => SignInUsecase(_getIt()))
      ..registerLazySingleton(() => SignUpUsecase(_getIt()))
      ..registerLazySingleton(() => SignOutUsecase(_getIt()))
      ..registerLazySingleton(() => GetCurrentUserUsecase(_getIt()))
      ..registerLazySingleton(() => ListenAuthStateUsecase(_getIt()))
      ..registerLazySingleton(() => ForgotPasswordUsecase(_getIt()))
      // Register Cubit
      ..registerLazySingleton(
        () => AuthCubit(
          _getIt(), // SignInUsecase
          _getIt(), // SignUpUsecase
          _getIt(), // SignOutUsecase
          _getIt(), // GetCurrentUserUsecase
          _getIt(), // ListenAuthStateUsecase
          _getIt(), // ForgotPasswordUsecase
        ),
      );
  }

  /// Setup the language dependency injection.
  static void languageSetup() {
    _getIt.registerLazySingleton(LanguageCubit.new);
  }

  /// Setup the network dependency injection.
  static void networkSetup() {
    final dioClient = ApiClient();

    _getIt
      ..registerLazySingleton<NewsApiClient>(
        () => NewsApiClient(dioClient.dio),
      );
  }

  /// Read an object from the dependency injection.
  static T read<T extends Object>() => _getIt<T>();
}
