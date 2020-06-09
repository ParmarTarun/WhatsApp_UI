import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Models/status.dart';
import 'package:whatsapp_ui/Widgets/ReplyBox.dart';

class StatusScreen extends StatelessWidget {
  final Status status;
  StatusScreen({@required this.status});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              //username
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(status.user.imageUrl),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          status.user.name,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Text(
                          status.time,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  PopupMenuButton(
                    child: Icon(Icons.more_vert, color: Colors.white),
                    itemBuilder: (context) => [
                      PopupMenuItem(child: Text("Mute")),
                    ],
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
              //post
              Expanded(
                  child: Image(
                image: AssetImage(status.post[0]["path"]),
              )),
              //caption
              Text(status.post[0]["caption"],
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              //reply option
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                      ),
                      Text(
                        "Reply",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => ReplyBox(
                      status: status,
                    ),
                    isScrollControlled: true
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
