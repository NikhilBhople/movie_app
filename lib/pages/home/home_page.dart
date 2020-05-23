import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/pages/home/widgets/content_list.dart';
import 'package:movieapp/pages/home/widgets/top_banner_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

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
          buildBannerContainer(_pageController),
          SizedBox(height: 10),
          buildContent("Favorite List", favorite),
          SizedBox(height: 10),
          buildContent("Popular List", popular),
        ],
      ),
    );
  }

}

