import 'package:flutter/material.dart';
import 'RoundedButton.dart';

class LandingP extends StatefulWidget {
  @override
  _LandingPState createState() => _LandingPState();
}

class _LandingPState extends State<LandingP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ClipPath(
                clipper: MyClipper(),
                child: Container(
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue[50],
                      Colors.blue[200]
                    ]
                  )
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RoundedButton(
                        color: Colors.blue,
	                      onPressed: (){}, 
                        text: 'Log in with Facebook'
                      ),
                      RoundedButton(
                        color: Colors.blue,
	                      onPressed: (){}, 
                        text: 'Log in with Google'
                      ),
                      Text("or"),
                      RoundedButton(
                        color: Colors.blue[200],
                        onPressed: (){ Navigator.pop(context); },
                        text: "Continue Offline",
                      ),
                      SizedBox(height: 30.0),
                      Text("*Sincronizarea se poate activa mai tarziu"),
                      SizedBox(height: 15.0)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height/2);
    //path.lineTo(size.width, size.height/2);
    path.quadraticBezierTo(size.width / 2, 200, size.width, size.height/2);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
