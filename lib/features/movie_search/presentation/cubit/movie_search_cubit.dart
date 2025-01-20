import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/features/movie_search/domain/usecases/search_movies.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_state.dart';

class MovieSearchCubit extends Cubit<MovieSearchState> {
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
}
