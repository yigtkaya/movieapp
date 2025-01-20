import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/core/cache/cache_manager.dart';
import 'package:movieapp/core/config/app_environment.dart';
import 'package:movieapp/core/di/injection.dart' as di;
import 'package:movieapp/features/movie_search/presentation/pages/movie_search_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup environment
  AppEnvironment.setup(
    configuration: DevEnv(),
  );

  // Initialize cache
  await CacheManager.init();

  // Initialize dependencies
  await di.init();

  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Search',
      theme: FlexThemeData.light(
        scheme: FlexScheme.material,
        useMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.material,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const MovieSearchPage(),
    );
  }
}

class MovieSearchPage extends StatelessWidget {
  const MovieSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Search'),
      ),
      body: const Center(
        child: Text('Movie Search App'),
      ),
    );
  }
}
