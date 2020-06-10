import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/pages/home/widgets/movielist/bloc/movielist/bloc.dart';

import 'content_list.dart';

class MovieListStateBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentState = BlocProvider.of<MovieListBloc>(context).state;
    if (currentState is MovieLoadingState) {
      return CircularProgressIndicator();
    } else if (currentState is FavoriteMovieLoadedState) {
      return BuildContentList(title: currentState.name,list: currentState.favoriteList);
    } else if (currentState is PopularMovieLoadedState) {
      return BuildContentList(title: currentState.name,list: currentState.popularList);
    }
  }
}
