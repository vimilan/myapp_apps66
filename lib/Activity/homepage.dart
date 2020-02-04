import 'package:flutter/material.dart';
import 'package:myapp_app/Fragment/aboutfragment.dart';
import 'package:myapp_app/Fragment/cliperfragment.dart';
import 'package:myapp_app/Fragment/contactfragment.dart';
import 'package:myapp_app/Fragment/homeframent.dart';
import 'package:myapp_app/Fragment/loginfragment.dart';
import 'package:myapp_app/Fragment/profilefragment.dart';
import 'package:myapp_app/Fragment/registerfragment.dart';
class DrawerItem{
  String title;
  IconData icon;
  IconData icont;
  DrawerItem(this.title,this.icon,this.icont);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.rss_feed,Icons.arrow_forward_ios),
    new DrawerItem("Login", Icons.local_pizza,Icons.arrow_forward_ios),
    new DrawerItem("About", Icons.info,Icons.arrow_forward_ios),
    new DrawerItem("Register", Icons.rss_feed,Icons.arrow_forward_ios),
    new DrawerItem("Contact", Icons.local_pizza,Icons.arrow_forward_ios),
    new DrawerItem("Profile", Icons.info,Icons.arrow_forward_ios),
    new DrawerItem("Clip", Icons.account_box,Icons.arrow_forward_ios)
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
        return new LoginFragment();
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
        default:
        return new Text("Error");
    }
  }
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
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Username"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),

    );
  }
}
