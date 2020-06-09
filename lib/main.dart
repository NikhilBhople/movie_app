import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/bloc/banner/banner_bloc.dart';
import 'package:movieapp/bloc/banner/banner_event.dart';
import 'package:movieapp/bloc/category/bloc.dart';
import 'package:movieapp/bloc/favorite/bloc.dart';
import 'package:movieapp/bloc/popular/bloc.dart';
import 'package:movieapp/pages/home/home_page.dart';

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
            create: (BuildContext context) => CategoryBloc()),
        BlocProvider<FavoriteBloc>(
            create: (BuildContext context) => FavoriteBloc()),
        BlocProvider<PopularBloc>(
            create: (BuildContext context) => PopularBloc())
      ], child: HomePage()),
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.red),
    );
  }
}
