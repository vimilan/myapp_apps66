import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class FirebaseFragment extends StatefulWidget {
  @override
  _FirebaseFragmentState createState() => _FirebaseFragmentState();
}

class _FirebaseFragmentState extends State<FirebaseFragment> {
  var _firebaseRef = FirebaseDatabase().reference().child('demo');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: (){
            _firebaseRef.push().set({
            "username":'Android',
            "password":'Developer',
          });

         },
      ),
    );
  }
}
