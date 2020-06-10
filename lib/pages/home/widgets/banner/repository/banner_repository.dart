
import 'package:movieapp/model/movie_model.dart';

class BannerRepository {

  // In real app, you can make the API call here and return Future<List<Movie>>
  List<Movie> getBannerList() {
    return movies;
  }
}