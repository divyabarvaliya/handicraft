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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffE6F3E4),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 195,
                width: 194,
                child: Image.asset(
                  "image/handicraft.png",
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text("HANDICRAFT",
                      style: TextStyle(
                        fontFamily: "zexo",
                        fontSize: 47,
                        color: Color(0xff204408),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Color(0xff204408),
                      size: 28,
                    ),
                    Container(
                        child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: "Calibri",
                        fontStyle: FontStyle.normal,
                        color: Color(0xff204408),
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorWidth: 30,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: "UserName",
                    labelStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 10, top: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorWidth: 30,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0, top: 50),
                    child: SizedBox(
                      width: 110.0,
                      height: 45.0,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Color(0xff707070))),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 50),
                    child: SizedBox(
                      width: 110.0,
                      height: 45.0,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Color(0xff707070))),
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
                                    builder: (context) => registration()));
                          }),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff204408),
                      fontFamily: " Calibri-Regular"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
