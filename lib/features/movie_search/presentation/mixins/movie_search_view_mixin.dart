part of '../movie_search_view.dart';

mixin MovieSearchViewMixin on State<MovieSearchView> {
  void onLanguagePressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => const LanguagePickerBottomSheet(),
    );
  }
}
