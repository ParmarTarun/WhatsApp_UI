import 'package:flutter/material.dart';

import 'Screens/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF25D366),
          textTheme: TextTheme(
            title: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
          )),
      home: Home(),
    );
  }
}
