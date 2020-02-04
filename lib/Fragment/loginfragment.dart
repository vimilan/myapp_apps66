import 'package:flutter/material.dart';
class LoginFragment extends StatefulWidget {
  @override
  _LoginFragmentState createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFragment> {
  @override
  Widget build(BuildContext context) {
    Widget bodp()=>Stack(
      children: <Widget>[
        Image.asset('images/logo.jpg'),
      ],
      //     Image.asset('images/logo.jpg', width: 600,height: 240,fit: BoxFit.cover,
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Chrc Hospital Indore(M.P.)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Indore, Bhopal, Devas',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('4.1'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
     Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
          'Choithram Hospital & Research Centre'
         'Indore has been granted NABH accreditation -March 2017.'
        'hoithram Hospital & Research Centre has been granted'
        'Nursing Excellence Certification by NABH and it is the first in MP- May 2017.'
            'Choithram Hospital & Research Centre'
            'Indore has been granted NABH accreditation -March 2017.'
            'hoithram Hospital & Research Centre has been granted'
            'Nursing Excellence Certification by NABH and it is the first in MP- May 2017.'
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.'
            'Choithram Hospital & Research Centre'
            'Indore has been granted NABH accreditation -March 2017.'
            'hoithram Hospital & Research Centre has been granted'
            'Nursing Excellence Certification by NABH and it is the first in MP- May 2017.'
            'Choithram Hospital & Research Centre'
            'Indore has been granted NABH accreditation -March 2017.'
            'hoithram Hospital & Research Centre has been granted'
            'Nursing Excellence Certification by NABH and it is the first in MP- May 2017.'
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
    return Scaffold(
      body: ListView(
        children: [
          Stack(
          children: <Widget>[
          Image.asset('images/bg.jpg'),
          ],
          ),
          Image.asset('images/logo.jpg', width: 600,height: 240,fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
    }
}
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

