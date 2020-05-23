import 'package:flutter/material.dart';

Widget buildContent(String title, List<String> list) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(Icons.chevron_right),
            )
          ],
        ),
      ),
      Container(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (BuildContext context, int position) {
            return Container(
              margin: EdgeInsets.only(bottom: 10, top: 10, left: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        offset: Offset(0, 1)),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(list[position]),
                  height: 160,
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ),
      )
    ],
  );
}
