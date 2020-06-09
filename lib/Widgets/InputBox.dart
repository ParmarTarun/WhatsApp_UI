import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.insert_emoticon), onPressed: () {}),
          Expanded(child: TextField(
            autofocus: true,
            style: TextStyle(
              fontSize: 20.0
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          )),
          IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
        ],
      ),
    );
  }
}
