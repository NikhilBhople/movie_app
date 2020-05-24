import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:rating_bar/rating_bar.dart';

Widget buildRaringBar(Movie movie){
  return  RatingBar.readOnly(
    initialRating: movie.rating,
    isHalfAllowed: true,
    filledColor: Colors.red,
    halfFilledIcon: Icons.star_half,
    filledIcon: Icons.star,
    emptyIcon: Icons.star_border,
  );
}