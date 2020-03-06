import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          accentColor: Color(0xff19370E), primaryColor: Color(0xff19370E)),
      home: design1(),
    );
  }
}

class design1 extends StatefulWidget {
  @override
  _design1State createState() => _design1State();
}

class _design1State extends State<design1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splash(),
    );
  }
}
