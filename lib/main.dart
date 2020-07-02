import 'package:flutter/material.dart';
import 'home.dart';
import 'loading.dart';
import 'landing_page.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/land': (context) => LandingP()
      },
    ));
