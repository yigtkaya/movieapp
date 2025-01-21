import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/core/constants/app_colors.dart';
import 'package:movieapp/core/constants/app_design_constant.dart';
import 'package:movieapp/core/theme/cubit/theme_cubit.dart';
import 'package:movieapp/core/theme/cubit/theme_state.dart';
import 'package:movieapp/core/view/base_widget.dart';
import 'package:movieapp/features/movie_search/domain/entities/movie.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_state.dart';
import 'package:movieapp/localization/l10.dart';
import 'package:shimmer/shimmer.dart';

part 'widgets/movie_grid.dart';
part 'widgets/movie_search_results.dart';
part 'widgets/full_screen_image_view.dart';

@RoutePage()
final class MovieSearchView extends BaseWidget<MovieSearchCubit, MovieSearchState> {
  const MovieSearchView({super.key});

  @override
  Widget build(BuildContext context, MovieSearchCubit cubit, MovieSearchState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.movieSearch),
        leading: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, themeState) => Switch(
            value: themeState.themeMode == ThemeMode.dark,
            onChanged: (value) => context.read<ThemeCubit>().toggleTheme(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () => cubit.showLanguagePicker(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDesignConstants.spacingMedium),
        child: Column(
          spacing: AppDesignConstants.spacingMedium,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: l10n.searchMoviesHint,
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(),
              ),
              onChanged: cubit.searchMovies,
            ),
            const Expanded(
              child: MovieSearchResults(),
            ),
          ],
        ),
      ),
    );
  }
}
