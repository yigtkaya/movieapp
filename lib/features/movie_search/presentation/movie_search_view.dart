import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/core/constants/app_colors.dart';
import 'package:movieapp/core/constants/app_design_constant.dart';
import 'package:movieapp/core/view/base_widget.dart';
import 'package:movieapp/features/movie_search/domain/entities/movie.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_state.dart';
import 'package:movieapp/localization/l10.dart';
import 'package:movieapp/localization/language_picker_sheet.dart';
import 'package:shimmer/shimmer.dart';

part 'mixins/movie_search_view_mixin.dart';
part 'widgets/movie_grid.dart';
part 'widgets/movie_search_results.dart';

@RoutePage()
final class MovieSearchView extends BaseWidget<MovieSearchCubit, MovieSearchState> {
  const MovieSearchView({super.key});

  @override
  Widget build(BuildContext context, MovieSearchCubit cubit, MovieSearchState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.movieSearch),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () async {},
          ),
        ],
      ),
      body: Column(
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
    );
  }
}
