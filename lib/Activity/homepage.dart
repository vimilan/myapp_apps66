import 'package:flutter/material.dart';
import 'package:myapp_app/Activity/mainnew.dart';
import 'package:myapp_app/Activity/tackpic.dart';
import 'package:myapp_app/Fragment/aboutfragment.dart';
import 'package:myapp_app/Fragment/cliperfragment.dart';
import 'package:myapp_app/Fragment/contactfragment.dart';
import 'package:myapp_app/Fragment/firebasefragment.dart';
import 'package:myapp_app/Fragment/googlemapfragment.dart';
import 'package:myapp_app/Fragment/homeframent.dart';
import 'package:myapp_app/Fragment/loginfragment.dart';
import 'package:myapp_app/Fragment/newcamera.dart';
import 'package:myapp_app/Fragment/pageviewfragment.dart';
import 'package:myapp_app/Fragment/profilefragment.dart';
import 'package:myapp_app/Fragment/registerfragment.dart';
import 'package:myapp_app/Fragment/stackfragment.dart';
class DrawerItem{
  String title;
  IconData icon;
  IconData icont;
  DrawerItem(this.title,this.icon,this.icont);
}
 class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home",    Icons.rss_feed,Icons.arrow_forward_ios),
    new DrawerItem("Login",   Icons.local_pizza,Icons.arrow_forward_ios),
    new DrawerItem("About",   Icons.info,Icons.arrow_forward_ios),
    new DrawerItem("Register",Icons.rss_feed,Icons.arrow_forward_ios),
    new DrawerItem("Contact", Icons.local_pizza,Icons.arrow_forward_ios),
    new DrawerItem("Profile", Icons.info,Icons.arrow_forward_ios),
    new DrawerItem("Clip",    Icons.account_box,Icons.arrow_forward_ios),
    new DrawerItem("Stack",   Icons.account_box,Icons.arrow_forward_ios),
    new DrawerItem("Cliper",  Icons.account_box,Icons.arrow_forward_ios),
    new DrawerItem("Google Map",Icons.account_box,Icons.arrow_forward_ios),
    new DrawerItem("Camera",  Icons.account_box,Icons.arrow_forward_ios),
    new DrawerItem("RealTime Firebase", Icons.account_box,Icons.arrow_forward_ios),
    new DrawerItem("Firebase App in notify", Icons.account_box,Icons.arrow_forward_ios)
  ];
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeFragment();
      case 1:
        return new LoginFragment();  //LoginFragment MapSample
      case 2:
        return new AboutFragment();
      case 3:
        return new RegisterFragment();
      case 4:
        return new ContactFragment();
      case 5:
        return new ProfileFragment();
      case 6:
        return new WavyHeaderImage();
      case 7:
        return new StackFragment();
      case 8:
        return new PageViewFragment();
      case 9:
        return new MapSample();
      case 10:
        return new MyCamera();
      case 11:
        return new FirebaseFragment();
       case 12:
        return new MyApps();
        default:
        return new Text("Error");
    }
  }
  //CameraApp
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }
  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            trailing: Icon(d.icont),
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }
    return new Scaffold(
      appBar: new AppBar(
      title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('UserName',style: TextStyle(
              fontSize: 20,color: Colors.white
            ),),
            decoration: BoxDecoration(
              color: Colors.red,
             ),
          ),
          new Column(children: drawerOptions)
          ],
       ),
       ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),

    );
  }
}
/*drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Username"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      */