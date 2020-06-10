import 'package:equatable/equatable.dart';

abstract class MovieListState extends Equatable {
  const MovieListState();
  @override
  List<Object> get props => [];
}

class MovieLoadingState extends MovieListState {}
class FavoriteMovieLoadedState extends MovieListState {
  final List<String> favoriteList;
  final String name;

  FavoriteMovieLoadedState({this.favoriteList, this.name});

  @override
  List<Object> get props => [favoriteList];
}

class PopularMovieLoadedState extends MovieListState {
  final List<String> popularList;
  final String name;

  PopularMovieLoadedState({this.popularList, this.name});
  @override
  List<Object> get props => [popularList];
}