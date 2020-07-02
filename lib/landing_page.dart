import 'package:flutter/material.dart';

class LandingP extends StatefulWidget {
  @override
  _LandingPState createState() => _LandingPState();
}

class _LandingPState extends State<LandingP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              onPressed: (){}, 
              child: Text(
                'Login with Google',
                style: TextStyle(fontSize: 20.0),
                )
              ),
              SizedBox(height: 10.0),
              FlatButton(
                color: Colors.blue[200],
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                  "Continue Offline",
                  style: TextStyle(fontSize: 20.0),
                ) 
              )
          ],
          ),
      ),
    );
  }
}