import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/bloc/banner/banner_bloc.dart';
import 'package:movieapp/bloc/banner/banner_state.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/home/widgets/banner/banner_state_builder.dart';
import 'package:movieapp/pages/home/widgets/content_list.dart';
import 'package:movieapp/pages/home/widgets/labels.dart';
import 'package:movieapp/pages/home/widgets/banner/top_banner_container.dart';


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
          BuildLabels(labels: labels),
          SizedBox(height: 10),
          BuildContentList(title: 'Favorite List',list: favorite),
          SizedBox(height: 10),
          BuildContentList(title: 'Popular List',list: popular),
        ],
      ),
    );
  }
}

