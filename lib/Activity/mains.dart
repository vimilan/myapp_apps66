import 'package:flutter/material.dart';
import 'package:myapp_app/Activity/spscreen.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kjk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MySpscreen(),
    );
  }
}

