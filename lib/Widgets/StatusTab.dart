import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Models/status.dart';
import 'package:whatsapp_ui/Models/user.dart';
import 'package:whatsapp_ui/Screens/StatusScreen.dart';

class Statustab extends StatelessWidget {
  final List statuses = Status.statuses;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Stack(alignment: Alignment.bottomRight, children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(User.currentUser.imageUrl),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).accentColor,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
              ]),
              title:
                  Text("My Status", style: Theme.of(context).textTheme.headline6),
              subtitle: Text("Tap to add status update",
                  style: Theme.of(context).textTheme.subtitle2),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.black12),
              child: Text("Recent Updates",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400)),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: statuses.length,
                itemBuilder: (BuildContext context, index) {
                  Status status = statuses[index];
                  return ListTile(
                    leading: Stack(alignment: Alignment.center, children: [
                      Container(
                        width: 54.0,
                        height: 54.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: status.seen
                                ? null
                                : Border.all(
                                    color: Theme.of(context).accentColor,
                                    width: 1.5)),
                      ),
                      CircleAvatar(
                        radius: 24.0,
                        backgroundImage: AssetImage(status.post[0]["path"]),
                      ),
                    ]),
                    title: Text(status.user.name,
                        style: Theme.of(context).textTheme.headline6),
                    subtitle: Text(status.time,
                        style: Theme.of(context).textTheme.subtitle2),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatusScreen(status: status,)));
                    },
                  );
                },
                separatorBuilder: (BuildContext context, index) => Divider(
                  height: 0,
                  indent: 80.0,
                  endIndent: 12.0,
                ),
              ),
            ),
          ],
        ));
  }
}
