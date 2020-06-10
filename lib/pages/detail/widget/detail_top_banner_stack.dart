import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/detail/util/custom_shadow.dart';
import 'package:movieapp/pages/detail/util/oval_clipper.dart';

class ShareAndAddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: null)
          ],
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: 0,
      child: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 15)]),
            child: Icon(
              Icons.play_arrow,
              color: Colors.red,
              size: 45,
            )),
      ),
    );
  }
}

class BuildAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Center(
            child: Image(
              image: AssetImage('assets/images/netflix_logo.png'),
              height: 50,
              width: 100,
            ),
          )
        ),
        IconButton(
            icon: Icon(Icons.favorite_border, size: 30,color: Colors.black,),
            onPressed: () => Navigator.pop(context)),
      ],
    );
  }
}

class ImageContainer extends StatelessWidget {
  final Movie movie;

  const ImageContainer({this.movie});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: movie.imageUrl,
        child: ClipShadowPath(
          shadow: Shadow(blurRadius: 30),
          clipper: CustomOvalClipper(),
          child: Image(
            image: AssetImage(movie.imageUrl),
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


