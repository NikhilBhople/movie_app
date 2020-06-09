import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';

abstract class BannerState extends Equatable {
  const BannerState();
  @override
  List<Object> get props => [];
}

class InitialBannerState extends BannerState {}
class LoadingBannerState extends BannerState {}
class LoadedBannerState extends BannerState {
  final List<Movie> moviesList;

  LoadedBannerState({@required this.moviesList});
  @override
  List<Object> get props => [moviesList];
}
