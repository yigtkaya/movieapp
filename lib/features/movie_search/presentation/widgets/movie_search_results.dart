part of '../movie_search_view.dart';

final class MovieSearchResults extends BaseWidget<MovieSearchCubit, MovieSearchState> {
  const MovieSearchResults({super.key});

  @override
  Widget build(BuildContext context, MovieSearchCubit cubit, MovieSearchState state) {
    return switch (state.status) {
      MovieSearchStatus.initial => Center(
          child: Text(
            l10n.searchForMovies,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.kGrey,
                ),
          ),
        ),
      MovieSearchStatus.loading => Center(
          child: CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.primary),
          ),
        ),
      MovieSearchStatus.loaded => MovieGrid(movies: state.movies),
      MovieSearchStatus.error => Center(
          child: Text(
            state.errorMessage ?? l10n.anErrorOccurred,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.kGrey,
                ),
          ),
        ),
    };
  }
}
