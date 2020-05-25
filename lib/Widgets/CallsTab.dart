import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Models/call.dart';

class CallsTab extends StatelessWidget {
  final List calls = Call.calls;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.separated(
            itemCount: calls.length,
            itemBuilder: (BuildContext context, index) {
              Call call = calls[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(call.caller.imageUrl),
                ),
                title: Text(call.caller.name,
                    style: Theme.of(context).textTheme.title),
                subtitle: Row(
                  children: <Widget>[
                    call.outgoing
                        ? Icon(
                            Icons.call_made,
                            color: Colors.green,
                            size: 16.0,
                          )
                        : Icon(
                            Icons.call_received,
                            color: Colors.red,
                            size: 16.0,
                          ),
                    Text(call.time,
                        style: Theme.of(context).textTheme.subtitle),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(call.videoCall ? Icons.videocam : Icons.call,
                      color: Theme.of(context).primaryColor),
                  onPressed: () {},
                ),
              );
            },separatorBuilder: (BuildContext context, index)=>Divider(
            height: 0,
            indent: 80.0,
            endIndent: 12.0,
          ),));
  }
}
