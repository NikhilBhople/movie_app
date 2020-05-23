import 'package:flutter/material.dart';
import 'package:movieapp/model/movie_model.dart';

Widget buildLabels(List<Label> labels) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 60,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            margin: EdgeInsets.only(left: 16),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                      image: AssetImage(labels[position].imageUrl),
                      height: 60,
                      width: 120,
                      fit: BoxFit.cover),
                ),
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0x99E50914)
                  ),
                ),
                Container(
                  height: 60,
                  width: 120,
                  child: Center(
                    child: Text(
                      labels[position].title,
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
        }),
  );
}
