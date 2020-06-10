import 'package:equatable/equatable.dart';

abstract class MovieListEvent extends Equatable {
  const MovieListEvent();
  @override
  List<Object> get props => [];
}

class GetFavoriteMovieListEvent extends MovieListEvent {}
class GetPopularMovieListEvent extends MovieListEvent {}
