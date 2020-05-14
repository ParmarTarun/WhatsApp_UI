import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1, //  for chat tab
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: isSearching
              ? IconButton(
                  icon: Icon(Icons.arrow_back),
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
                      hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
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
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text("Chats")),
            Tab(child: Text("Status")),
            Tab(child: Text("Calls")),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("Open Camera")),
          Center(child: Text("Chats")),
          Center(child: Text("Status")),
          Center(child: Text("Calls")),
        ]),
      ),
    );
  }
}
