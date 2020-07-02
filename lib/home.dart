import 'package:flutter/material.dart';
import 'package:od_journal/constant.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OD Journal',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins",
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
          )),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   elevation: 0,
      // ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // child:
                // FlatButton(
                //     color: Colors.blue,
                //     onPressed: () {
                //       Navigator.pushNamed(context, '/land');
                //     },
                //     child: Text("Sync with Google"));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(16, 27, 117, 0.5),
                    Color.fromRGBO(16, 27, 117, 0.5),
                  ]),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/points_removed.png",
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment(-0.8, -0.6),
                  child: Image.asset(
                    "assets/images/hamburger_icon.png",
                    width: 30,
                    height: 20,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
