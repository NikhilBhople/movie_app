import 'package:flutter/material.dart';
import 'package:movieapp/pages/home/widgets/category/bloc/bloc.dart';
import 'package:movieapp/pages/home/widgets/category/bloc/category_state.dart';

class BuildCategory extends StatelessWidget {
  final CategoryLoadedState state;

  const BuildCategory({Key key, this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categories = state.labels;
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            margin: EdgeInsets.only(left: 16),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                      image: AssetImage(categories[position].imageUrl),
                      height: 60,
                      width: 120,
                      fit: BoxFit.cover),
                ),
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0x99E50914)),
                ),
                Container(
                  height: 60,
                  width: 120,
                  child: Center(
                    child: Text(
                      categories[position].title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
