import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/homepage.dart';
import 'package:handicfaft_firstscreen/registration.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE6F3E4),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: <Widget>[
                      Container(
                        height: 195,
                        width: 194,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/handicraft.png"),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text("HANDICRAFT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "zexo",
                                fontSize: 47,
                                color: Color(0xff204408),
                              ))),
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("image/login.png"),
                                ),
                              ),
                            ),
                            Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: "Calibri",
                                fontStyle: FontStyle.normal,
                                color: Color(0xff204408),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            labelText: 'Username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: SizedBox(
                              width: 114.0,
                              height: 50.0,
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                          BorderSide(color: Color(0xff707070))),
                                  color: Color(0xffD0EBBC),
                                  elevation: 8,
                                  child: Text("Register",
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color(0xff060606),
                                          fontFamily: "Calibri-Bold")),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                registration()));
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0),
                            child: SizedBox(
                              width: 114.0,
                              height: 50.0,
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                          BorderSide(color: Color(0xff707070))),
                                  color: Color(0xffD0EBBC),
                                  elevation: 8,
                                  child: Text("Login",
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color(0xff060606),
                                          fontFamily: "Calibri-Bold")),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => homepage()));
                                  }),
                            ),
                          )
                        ]),
                      )
                    ])))));
  }
}
