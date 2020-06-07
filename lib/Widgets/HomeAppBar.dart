import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  final TabController tabController;

  HomeAppBar({this.tabController});

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  bool isSearching = false;

  List _options = [
    [
      PopupMenuItem(child: Text("New group")),
      PopupMenuItem(child: Text("New broadcast")),
      PopupMenuItem(child: Text("WhatsApp Web")),
      PopupMenuItem(child: Text("Starred messages")),
      PopupMenuItem(child: Text("Settings")),
    ],
    [
      PopupMenuItem(child: Text("Status privacy")),
      PopupMenuItem(child: Text("Settings")),
    ],
    [
      PopupMenuItem(child: Text("Clear call logs")),
      PopupMenuItem(child: Text("Settings")),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: isSearching ? Colors.white : null,
      pinned: true,
      floating: true,
      forceElevated: true,
      leading: isSearching
          ? IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                setState(() {
                  isSearching = false;
                });
              })
          : null,
      title: isSearching
          ? TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search...",
              ),
              style: TextStyle(fontSize: 20.0),
              textInputAction: TextInputAction.go,
            )
          : Text("Whats App"),
      actions: isSearching
          ? null
          : <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      isSearching = true;
                    });
                  }),
              PopupMenuButton(
                  itemBuilder: (BuildContext context) =>
                      _options[widget.tabController.index - 1])
            ],
      bottom: isSearching
          ? null
          : TabBar(
              controller: widget.tabController,
              indicatorColor: Colors.white,
              tabs: [
                  Tab(child: Icon(Icons.camera_alt)),
                  Row(
                    children: <Widget>[
                      Tab(child: Text("CHATS")),
                      SizedBox(width: 6.0),
                      Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Text("4",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor)),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Tab(child: Text("STATUS")),
                      SizedBox(width: 6.0),
                      Container(
                        width: 8.0,
                        height: 8.0,
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      )
                    ],
                  ),
                  Tab(child: Text("CALLS")),
                ]),
    );
  }
}
