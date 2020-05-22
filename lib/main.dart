import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/pages/home_page.dart';

void main() => runApp(MovieApp());

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      home: HomePage(),
    );
  }
}