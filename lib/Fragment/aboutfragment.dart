import 'package:flutter/material.dart';
class AboutFragment extends StatefulWidget {
  @override
  _AboutFragmentState createState() => _AboutFragmentState();
}

class _AboutFragmentState extends State<AboutFragment> {
  Widget image=Container(child: Image.asset('images/logo.jpg'),);
  Widget con=Container(
    child: Text('# myapp_app'
        ' A new Flutter application.'
        ' ## Getting Started'
        'This project is a starting point for a Flutter application.'
        'A few resources to get you started if this is your first Flutter project:'
        '- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)'
        ' - [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)'
        'For help getting started with Flutter, view our'
        '[online documentation](https://flutter.dev/docs), which offers tutorials,'
        'samples, guidance on mobile development, and a full API reference.')
  );
  @override
  Widget build(BuildContext context) {
  Widget buildRow() =>
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.accessibility,size: 120,),
        Icon(Icons.accessibility,size: 120,),
        Icon(Icons.accessibility,size: 120,),
      ],
    );
    Widget bodp() => Stack(
       children: <Widget>[
         Image.asset('images/logo.jpg'),
       ],
 //     Image.asset('images/logo.jpg', width: 600,height: 240,fit: BoxFit.cover,
      );
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[image,con],
        ),
      ),
    /* body: Container(
        color: Colors.blue,
        child: Row(
          children: <Widget>[
          Column(
          children: <Widget>[
          Icon(Icons.accessibility,size: 120,),
          Column(
          children: <Widget>[
          Text('HHHHHHHHH')
      ],
  )
],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.accessibility,size: 120,),
                Column(
                  children: <Widget>[
                    Text('HHHHHHHHH')
                  ],
                )
              ],
            ),
            Column(
                children: <Widget>[
                Icon(Icons.accessibility,size: 120,),
                Column(
                  children: <Widget>[
                    Text('HHHHHHHHH'),buildRow()
                  ],
                )
              ],
            ),
          ],
        ),
      ),*/

    );
  }
}
