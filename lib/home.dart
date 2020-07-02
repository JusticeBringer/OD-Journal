import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("OD-Journal"),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          onPressed: (){
            Navigator.pushNamed(context, '/land');
          }, 
          child: Text("Sync with Google")
          ),
      )
    );
  }
}
