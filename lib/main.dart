import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/pages/home/home_page.dart';

void main() => runApp(MovieApp());

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.red
      ),
    );
  }
}