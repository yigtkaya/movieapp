import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/core/di/injection.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_state.dart';
import 'package:movieapp/features/movie_search/presentation/widgets/movie_grid.dart';

@RoutePage()
final class MovieSearchPage extends StatelessWidget {
  const MovieSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MovieSearchCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movie Search'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Search movies...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (query) {
                  context.read<MovieSearchCubit>().searchMovies(query);
                },
              ),
              const SizedBox(height: 16),
              Expanded(
                child: BlocBuilder<MovieSearchCubit, MovieSearchState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(
                        child: Text('Search for movies'),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (movies) => MovieGrid(movies: movies),
                      error: (message) => Center(
                        child: Text(message),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
