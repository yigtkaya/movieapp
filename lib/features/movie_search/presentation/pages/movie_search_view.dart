import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/core/di/dependecy_injection.dart';
import 'package:movieapp/core/view/base_view.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_state.dart';
import 'package:movieapp/features/movie_search/presentation/widgets/movie_grid.dart';

@RoutePage()
final class MovieSearchView extends BaseView<MovieSearchCubit, MovieSearchState> {
  const MovieSearchView({super.key})
      : super(
          value: DependencyInjection.read<MovieSearchCubit>,
        );

  @override
  Widget builder(BuildContext context, MovieSearchCubit cubit) {
    return Scaffold(
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
                  switch (state.status) {
                    case MovieSearchStatus.initial:
                      return const Center(
                        child: Text('Search for movies'),
                      );
                    case MovieSearchStatus.loading:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    case MovieSearchStatus.loaded:
                      return MovieGrid(movies: state.movies);
                    case MovieSearchStatus.error:
                      return Center(
                        child: Text(state.errorMessage ?? 'An error occurred'),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
