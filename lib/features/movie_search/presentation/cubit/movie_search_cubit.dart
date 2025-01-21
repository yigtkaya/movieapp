import 'package:flutter/material.dart';
import 'package:movieapp/core/cubit/base_cubit.dart';
import 'package:movieapp/features/movie_search/domain/usecases/search_movies.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_state.dart';
import 'package:movieapp/localization/language_picker_sheet.dart';

final class MovieSearchCubit extends BaseCubit<MovieSearchState> {
  MovieSearchCubit(this._searchMovies) : super(MovieSearchState.initial());

  final SearchMovies _searchMovies;

  Future<void> searchMovies(String query) async {
    emit(MovieSearchState.loading());

    try {
      final movies = await _searchMovies(query);
      emit(MovieSearchState.loaded(movies));
    } catch (e) {
      emit(MovieSearchState.error(e.toString()));
    }
  }

  void showLanguagePicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (_) => const LanguagePickerBottomSheet(),
    );
  }
}
