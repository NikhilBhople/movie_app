import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/detail/widget/build_country_year_lenght.dart';
import 'package:movieapp/pages/detail/widget/detail_top_banner_stack.dart';
import 'package:movieapp/pages/detail/widget/rating_bar.dart';
import 'package:movieapp/pages/home/widgets/movielist/content_list.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  MovieDetailPage(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MediaQuery.removePadding(
        removeTop: true,
        child: ListView(
          children: <Widget>[
            Container(
              height: 370,
              child: Stack(
                children: <Widget>[
                  ImageContainer(movie: movie),
                  BuildAppBar(),
                  PlayButton(),
                  ShareAndAddButton()
                ],
              ),
            ),
            buildMovieTitle(),
            buildMovieCategoriesText(),
            RaringBar(movie: movie),
            BuildCountryYearLengthOfMovie(movie: movie),
            buildMovieDescription(),
            BuildContentList(title: 'Screenshots',list: movie.screenshots),
          ],
        ),
        context: context,
      ),
    );
  }


  buildMovieCategoriesText() {
    return Container(
      width: 200,
      height: 50,
      child: Center(
        child: Text(
          movie.categories,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  buildMovieTitle() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: 200,
      height: 50,
      child: Center(
        child: Text(
          movie.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  buildMovieDescription() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        movie.description,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
