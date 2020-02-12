import 'package:flutter/material.dart';
class PageViewFragment extends StatefulWidget {
  @override
  _PageViewFragmentState createState() => _PageViewFragmentState();
}

class _PageViewFragmentState extends State<PageViewFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.pink,
              child: Image.asset('images/ggg.png'),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.cyan,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               color: Colors.deepPurple,
            ),
          ),
        ],
     //   scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
