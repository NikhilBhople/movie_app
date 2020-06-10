import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:movieapp/pages/home/widgets/movielist/repository/movies_repository.dart';
import './bloc.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  final MovieRepository _repository = MovieRepository();

  @override
  MovieListState get initialState => MovieLoadingState();

  @override
  Stream<MovieListState> mapEventToState(MovieListEvent event) async* {
    if (event is GetFavoriteMovieListEvent) {
      yield MovieLoadingState();
      yield FavoriteMovieLoadedState(favoriteList: _repository.getMoviesList(MovieType.Favorite), name: 'Favorite List');
    } else if (event is GetPopularMovieListEvent) {
      yield MovieLoadingState();
      yield PopularMovieLoadedState(popularList: _repository.getMoviesList(MovieType.Popular), name: 'Popular List');
    }
  }
}
