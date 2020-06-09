import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/bloc/banner/banner_bloc.dart';
import 'package:movieapp/bloc/banner/banner_state.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/detail/movie_detail.dart';

class BannerContainer extends StatefulWidget {
  @override
  _BannerContainerState createState() => _BannerContainerState();
}

class _BannerContainerState extends State<BannerContainer> {
  PageController _pageController;
  LoadedBannerState _bannerLoadedState;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
    _bannerLoadedState = BlocProvider.of<BannerBloc>(context).state as LoadedBannerState;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity, // match_parent in android
      child: PageView.builder(
        itemBuilder: (BuildContext context, int page) {
          return BannerSelector(page: page,pageController: _pageController, movie: _bannerLoadedState.moviesList[page]);
        },
        itemCount: _bannerLoadedState.moviesList.length,
        controller: _pageController,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class BannerSelector extends StatelessWidget {
  final int page;
  final PageController pageController;
  final Movie movie;

  const BannerSelector({Key key, this.page, this.pageController, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - page;
          value = (1 - (value.abs() * 0.3) + 0.02).clamp(0.0, 1.0);
        }
        return GestureDetector(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => MovieDetailPage(movie))),
          child: Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value) * 270,
              width: Curves.easeInOut.transform(value) * 400,
              child: widget,
            ),
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
              child: Hero(
                tag: movie.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(movie.imageUrl),
                    fit: BoxFit.fill,
                    height: 220,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Text(
              movie.title,
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
}
