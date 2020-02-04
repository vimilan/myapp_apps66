import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp_app/Activity/homepage.dart';
class MySpscreen extends StatefulWidget {
  @override
  _MySpscreenState createState() => _MySpscreenState();
}

class _MySpscreenState extends State<MySpscreen> {
 void load(){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
  }
 final logo=FlutterLogo(size: 200,);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),load);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: logo,
      ),
    );
  }
}
