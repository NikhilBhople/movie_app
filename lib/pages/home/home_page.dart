import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/pages/home/widgets/banner/bloc/banner_bloc.dart';
import 'package:movieapp/pages/home/widgets/banner/bloc/banner_state.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/home/widgets/banner/banner_state_builder.dart';
import 'package:movieapp/pages/home/widgets/category/bloc/bloc.dart';
import 'package:movieapp/pages/home/widgets/movielist/content_list.dart';
import 'package:movieapp/pages/home/widgets/movielist/bloc/movielist/bloc.dart';

import 'widgets/category/category_state_builder.dart';
import 'widgets/movielist/movie_list_state_builder.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        title: Container(
            child: Image(
          image: AssetImage('assets/images/netflix_logo.png'),
          width: 100,
        )),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null)
        ],
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          BlocBuilder<BannerBloc, BannerState>(builder: (context, state) => BannerStateBuilder()),
          BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) => CategoryStateBuilder()),
          SizedBox(height: 10),
          BlocBuilder<MovieListBloc, MovieListState>(builder: (context, state) => MovieListStateBuilder()),
          SizedBox(height: 10),
          BlocBuilder<MovieListBloc, MovieListState>(builder: (context, state) => MovieListStateBuilder()),
        ],
      ),
    );
  }
}

