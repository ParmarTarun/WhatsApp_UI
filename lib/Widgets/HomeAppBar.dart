import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  bool isSearching = false;

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
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(child: Text("New group")),
                        PopupMenuItem(child: Text("New broadcast")),
                        PopupMenuItem(child: Text("WhatsApp Web")),
                        PopupMenuItem(child: Text("Starred messages")),
                        PopupMenuItem(child: Text("Settings")),
                      ])
            ],
      bottom: isSearching
          ? null
          : TabBar(indicatorColor: Colors.white, tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text("CHATS")),
              Tab(child: Text("STATUS")),
              Tab(child: Text("CALLS")),
            ]),
    );
  }
}
