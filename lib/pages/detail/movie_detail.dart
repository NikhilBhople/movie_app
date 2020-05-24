import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/detail/util/custom_shadow.dart';
import 'package:movieapp/pages/detail/util/oval_clipper.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;
  MovieDetailPage(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Hero(
                  tag: movie.imageUrl,
                  child: ClipShadowPath(
                    shadow: Shadow(blurRadius: 20),
                    clipper: CustomOvalClipper(),
                    child: Image(
                      image: AssetImage(movie.imageUrl),
                      height: 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context)),
                    Image(image: AssetImage('assets/images/netflix_logo.png'),height: 50,width: 100,),
                    IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () => Navigator.pop(context)),
                  ],
                ),
              )
            ],


          ),

        ],
      ),
    );
  }
}
