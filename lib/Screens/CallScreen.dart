import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Models/call.dart';

class CallScreen extends StatelessWidget {
  final Call call;
  CallScreen({@required this.call});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Info"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.chat), onPressed: () {}),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Remove from call log")),
              PopupMenuItem(child: Text("Block")),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(call.caller.imageUrl),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(call.caller.name,
                          style: Theme.of(context).textTheme.headline6),
                      Text(call.caller.status,
                          style: Theme.of(context).textTheme.subtitle2),
                    ],
                  ),
                ),
                IconButton(
                    icon:
                        Icon(Icons.call, color: Theme.of(context).primaryColor),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.videocam,
                        color: Theme.of(context).primaryColor),
                    onPressed: () {}),
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 70.0,
            endIndent: 12.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 70.0, top: 5.0),
            child: Text(call.time.split(",")[0]),
          ),
          ListTile(
            leading: Icon(
              call.outgoing ? Icons.call_made : Icons.call_received,
              color: call.outgoing ? Colors.green : Colors.red,
              size: 32.0,
            ),
            title: Text(
              call.outgoing ? "Outgoing" : "Incoming",
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              call.time.split(", ")[1],
              style: Theme.of(context).textTheme.subtitle2,
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("1:02"),
                Text("2 mb"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
