import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';


Container buildBannerContainer(PageController pageController) {
  return Container(
    height: 250,
    width: double.infinity, // match_parent in android
    child: PageView.builder(
      itemBuilder: (BuildContext context, int page) {
        return bannerSelector(page,pageController);
      },
      itemCount: movies.length,
      controller: pageController,
    ),
  );
}

Widget bannerSelector(int page, PageController pageController) {
  return AnimatedBuilder(
    animation: pageController,
    builder: (BuildContext context, Widget widget) {
      double value = 1;
      if (pageController.position.haveDimensions) {
        value = pageController.page - page;
        value = (1 - (value.abs() * 0.3) + 0.02).clamp(0.0, 1.0);
      }
      return Center(
        child: SizedBox(
          height: Curves.easeInOut.transform(value) * 270,
          width: Curves.easeInOut.transform(value) * 400,
          child: widget,
        ),
      );
    },
    child: Stack(
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 4),
                    blurRadius: 10)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(movies[page].imageUrl),
                fit: BoxFit.fill,
                height: 220,
                width: double.infinity,
              ),
            ),
          ),
        ),
        Positioned(
          child: Text(
            movies[page].title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          bottom: 25,
          left: 20,
          width: 200,
        )
      ],
    ),
  );
}