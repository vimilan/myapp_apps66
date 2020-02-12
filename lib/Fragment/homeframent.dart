import 'package:flutter/material.dart';
import 'package:myapp_app/Activity/seconpage.dart';
import 'package:progress_dialog/progress_dialog.dart';
ProgressDialog pr;

class  HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  final _uname=TextEditingController();
  final _upass=TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _uname.dispose();
    _upass.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    Widget Loginde=Container(
        child:  TextFormField(
        controller: _uname,
        decoration: InputDecoration(
          hintText: 'Enter Username',
          labelText: 'Enter Username',
          errorText: _validate ? 'Value Can\'t Be Empty' : null,
          ),
      )
     );
    Widget butn=Container(
      child:RaisedButton(

        onPressed: (){
            setState(() {
          _uname.text.isEmpty ? _validate = true : _validate = false;
          _upass.text.isEmpty ? _validate = true : _validate = false;
          });
         pr.show();

      Future.delayed(Duration(seconds: 3)).then((value){
       pr.hide().whenComplete((){
    //    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
   }
   );
   });
   },
    child: Text('Login'),
      )
    );

    Widget Logindes=Container(
        child:  TextFormField(
          controller: _upass,
          decoration: InputDecoration(
            hintText: 'Enter Password',
            labelText: 'Enter Password',
            errorText: _validate ? 'Value Can\'t Be Empty' : null,
          ),
        ),

    );

    Widget widgets=
        Container(
          child: Stack(
            children: <Widget>[
              Image.asset('images/bg.jpg')
            ],
          ),
        );

    Widget buildRow= Row(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.accessibility,size: 120,),
        Icon(Icons.accessibility,size: 120,),
        Icon(Icons.accessibility,size: 120,),
      ],
    );
    Widget circleimage=Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/logo.jpg')
        )
      ),
    );

    Widget hasd=CircleAvatar(
      radius: 100.0,
    backgroundImage: NetworkImage('https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
    //  backgroundImage:AssetImage('images/logo.jpg'),
      backgroundColor: Colors.transparent,
    );
    Widget data=Container(
        width: 120.0,
        height: 120.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/logo.jpg')
            )
        )
    );
    pr = new ProgressDialog(context);
    pr.style(
        message: 'Please Waiting...',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600)
    );
    return Scaffold(
      body: Container(
     decoration: BoxDecoration(
       image: DecorationImage(
       image: AssetImage("images/bg.jpg"),
        fit: BoxFit.cover,
    ),
    ),
    child: Center(
        child: ListView(
        shrinkWrap: true,
        children: <Widget>[hasd,Loginde,Logindes,butn],
      ),
    ) /* add child content here */,
    ),
   );
  }
}
