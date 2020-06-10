import 'package:movieapp/model/movie_model.dart';

class MovieRepository {

  // If you are getting list from API then you have to write Future<List<String>> getMoviesList(String type) async {}
  List<String> getMoviesList(MovieType type) {
    if (type == MovieType.Favorite) {
      return favorite;
    }else if (type == MovieType.Popular) {
      return popular;
    }
  }
}

enum MovieType {
  Favorite,
  Popular
}
