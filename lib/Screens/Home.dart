import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/CallsTab.dart';

import 'package:whatsapp_ui/Widgets/ChatsTab.dart';
import 'package:whatsapp_ui/Widgets/HomeAppBar.dart';
import 'package:whatsapp_ui/Widgets/StatusTab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 1, //  for chat tab
        length: 4,
        child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool isScrolled) =>
                [HomeAppBar()],
            body: TabBarView(children: [
              Center(child: Text("Open Camera")),
              ChatsTab(),
              Statustab(),
              CallsTab(),
            ])),
      ),
      floatingActionButton: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Theme.of(context).accentColor),
          child: IconButton(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
                size: 32.0,
              ),
              onPressed: () {})),
    );
  }
}
