import 'package:flutter/material.dart';
class RegisterFragment extends StatefulWidget {
  @override
  _RegisterFragmentState createState() => _RegisterFragmentState();
}

class _RegisterFragmentState extends State<RegisterFragment> {
  Widget appBarTitle = new Text("AppBar Title");
  Icon actionIcon = new Icon(Icons.search);
  Widget email=Container(
    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
    child: TextFormField(
      initialValue: '@gmail.com',
      keyboardType: TextInputType.emailAddress,

      decoration: InputDecoration(
        labelText: 'Enter Username',
        hintText: 'Enter Username',
         // contentPadding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
       ),
    ),
  );
  /*Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
          },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),*/
  Widget mobile=Container(
child: Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child:TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          hintText:  'Search',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0))
                //
          )

        ),
      ) ,
    )
  ],
),
  );
  Widget password=Container(
    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
    child: TextFormField(
        decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Enter Password',
        contentPadding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
      ),
    ),
  );
  Widget button=Container(
    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
    child: RaisedButton(
      onPressed: (){
        },
      child: Text('Register',style: TextStyle(
        fontSize: 15.0,
      ),
      ),
      color: Colors.red,
    ),
  );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
  /*    appBar: AppBar(
        title: Text(''),
        actions: <Widget>[
          IconButton(icon: actionIcon,onPressed: (){
            setState(() {
              if(this.actionIcon.icon==Icons.search){
                this.actionIcon = new Icon(Icons.close);
                this.appBarTitle = new TextField(
                  style: new TextStyle(
                    color: Colors.white,

                  ),
                  decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search,color: Colors.white),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white)
                  ),
                );
              }else{

              this.actionIcon = new Icon(Icons.search);
              this.appBarTitle = new Text("AppBar Title");

              }
            });
          },)
        ],
      ),*/
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[email,password,mobile,button],
        ),
      ),
    );
  }
}
