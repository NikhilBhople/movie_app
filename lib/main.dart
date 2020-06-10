import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/pages/home/widgets/banner/bloc/banner_bloc.dart';
import 'package:movieapp/pages/home/widgets/category/bloc/bloc.dart';
import 'package:movieapp/pages/home/home_page.dart';
import 'package:movieapp/pages/home/widgets/banner/bloc/bloc.dart';
import 'package:movieapp/pages/home/widgets/movielist/bloc/movielist/bloc.dart';

void main() => runApp(MovieApp());

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      home: MultiBlocProvider(providers: [
        BlocProvider<BannerBloc>(
            create: (BuildContext context) => BannerBloc()..add(AppStartEvent())),
        BlocProvider<CategoryBloc>(
            create: (BuildContext context) => CategoryBloc()..add(CategoryAppStartEvent())),
        BlocProvider<MovieListBloc>(
            create: (BuildContext context) => MovieListBloc()..add(GetPopularMovieListEvent())..add(GetFavoriteMovieListEvent())),
      ], child: HomePage()),
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.red),
    );
  }
}
