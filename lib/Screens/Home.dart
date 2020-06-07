import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/CallsTab.dart';

import 'package:whatsapp_ui/Widgets/ChatsTab.dart';
import 'package:whatsapp_ui/Widgets/HomeAppBar.dart';
import 'package:whatsapp_ui/Widgets/StatusTab.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController tabController;

  List<IconData> _fabsIcon = [Icons.chat, Icons.camera_alt, Icons.add_call];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    tabController.addListener(handleChange);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void handleChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool isScrolled) =>
                [HomeAppBar(tabController: tabController)],
            body: TabBarView(controller: tabController, children: [
              Center(child: Text("Open Camera")),
              ChatsTab(),
              Statustab(),
              CallsTab(),
            ])),
        floatingActionButton: tabController.index == 0
            ? null
            : Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  tabController.index == 2
                      ? FloatingActionButton(
                        heroTag: 1,
                          backgroundColor: Colors.white70,
                          child: Icon(
                            Icons.edit,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {})
                      : SizedBox(),
                  SizedBox(
                    height: 10.0,
                  ),
                  FloatingActionButton(
                    heroTag: 2,
                      child: Icon(
                        _fabsIcon[tabController.index - 1],
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ],
              ));
  }
}
