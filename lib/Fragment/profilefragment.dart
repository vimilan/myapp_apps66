import 'package:flutter/material.dart';
class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  Widget images=Container(
     child: Image.asset('images/logo.jpg'),
   /* decoration: BoxDecoration(
      image: DecorationImage(

    //   image: Image.asset("images/bg.jpg"),
        fit: BoxFit.cover,
      ),
    ),*/
   // child: AssetImage('images/logo.jpg'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[images],
        ),
      ),
    );
  }
}
