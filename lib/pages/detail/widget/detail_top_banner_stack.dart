import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/detail/util/custom_shadow.dart';
import 'package:movieapp/pages/detail/util/oval_clipper.dart';


Positioned buildShareAndAddButton() {
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

Positioned buildPlayButton() {
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

Padding buildAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            icon: Icon(Icons.arrow_back, size: 30, color: Colors.black,),
            onPressed: () => Navigator.pop(context)),
        Image(
          image: AssetImage('assets/images/netflix_logo.png'),
          height: 50,
          width: 100,
        ),
        IconButton(
            icon: Icon(Icons.favorite_border, size: 30,color: Colors.black,),
            onPressed: () => Navigator.pop(context)),
      ],
    ),
  );
}

Container buildImageContainer(Movie movie) {
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

