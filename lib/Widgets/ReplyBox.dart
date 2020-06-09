import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Models/status.dart';
import 'package:whatsapp_ui/Widgets/InputBox.dart';
import 'package:whatsapp_ui/Widgets/RepliedTo.dart';

class ReplyBox extends StatelessWidget {
  final Status status;

  ReplyBox({@required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RepliedTo(
                      imageUrl: status.post[0]["path"],
                      caption: status.post[0]["caption"],
                      name: status.user.name,
                    ),
                    InputBox(),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).accentColor),
                child: IconButton(
                    icon: Icon(
                      Icons.keyboard_voice,
                      color: Colors.white,
                    ),
                    onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
