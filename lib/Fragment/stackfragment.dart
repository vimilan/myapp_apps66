import 'package:flutter/material.dart';
import 'package:myapp_app/Activity/seconpage.dart';
import 'package:myapp_app/Fragment/aboutfragment.dart';
import 'package:myapp_app/Fragment/contactfragment.dart';
class StackFragment extends StatefulWidget {
  @override
  _StackFragmentState createState() => _StackFragmentState();
}

class _StackFragmentState extends State<StackFragment> {
  var page=PageController(
    initialPage: 3,

  );
  var pass=PageView(

    children: <Widget>[
      AboutFragment(),
      ContactFragment(),
      HomePage(),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: <Widget>[
        // Max Size
     Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/save.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Positioned(
        top: 28.0,
        left: 10.0,
        right: 10.0,
        child: Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Team Time",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 208.0,
        left: 10.0,
        right: 10.0,
        child: Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Team Time",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 128.0,
        left: 10.0,
        right: 10.0,
        child: Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                "Team Time",
                style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              ),
            ],
          ),
        ),
      ),


        ],
      ),
    );
  }
}
