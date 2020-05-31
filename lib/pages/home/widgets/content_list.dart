import 'package:flutter/material.dart';

class BuildContentList extends StatelessWidget {
  final String title;
  final List<String> list;

  const BuildContentList({Key key, this.title, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          height: title == 'Screenshots' ? 140 : 180,
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
                    height: title == 'Screenshots' ? 140 : 160,
                    width: title == 'Screenshots' ? 180 : 120,
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
}

