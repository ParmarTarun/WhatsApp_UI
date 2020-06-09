import 'package:flutter/material.dart';

class RepliedTo extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String caption;

  RepliedTo({@required this.caption,@required  this.imageUrl,@required  this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 5.0, top: 3.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border(
                      left: BorderSide(color: Colors.purple, width: 4.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w800,
                        fontSize: 18.0),
                  ),
                  Text(
                    caption,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
          Image(image: AssetImage(imageUrl))
        ],
      ),
    );
  }
}
