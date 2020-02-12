import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class FirebaseFragment extends StatefulWidget {
  @override
  _FirebaseFragmentState createState() => _FirebaseFragmentState();
}

class _FirebaseFragmentState extends State<FirebaseFragment> {
  var _firebaseRef = FirebaseDatabase().reference().child('demo');

  Widget user=Container(

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: RaisedButton(
          onPressed: (){
            _firebaseRef.push().set({
              "username":'Android',
              "password":'Developer',
            });
           },
        ),
      ),


    );
  }
}
/*
class FirebaseFragment extends StatefulWidget {
  @override
  _FirebaseFragmentState createState() => _FirebaseFragmentState();
}

class _FirebaseFragmentState extends State<FirebaseFragment> {
  var _firebaseRef = FirebaseDatabase().reference().child('demo');

  @override
  Widget build(BuildContext context) {
*/
/*    Widget fsa=Container(
      child: RaisedButton(

        onPressed: (){

          firebaseRef.push().set({
            "username":'Android',
            "password":'Developer',
          });

        },
      ),
    );*//*

    return Container(
      child: RaisedButton(

        onPressed: (){
          firebaseRef.push().set({
            "username":'Android',
            "password":'Developer',
          });

        },
      ),
    );
  }
}
*/
