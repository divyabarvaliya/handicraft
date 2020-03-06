import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Login.dart';

class registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE6F3E4),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Center(
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
            Text("HANDICRAFT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "zexo",
                  fontSize: 47,
                  color: Color(0xff204408),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
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
                    "Registration",
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
              padding:
                  const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  labelText: 'Email Address',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 12.0, left: 30.0, right: 30.0),
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
              padding:
                  const EdgeInsets.only(top: 12.0, left: 30.0, right: 30.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  labelText: 'First Name',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 12.0, left: 30.0, right: 30.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 12.0, left: 30.0, right: 30.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  labelText: 'Mobile No.',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: SizedBox(
                    width: 114.0,
                    height: 50.0,
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
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
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
                            side: BorderSide(color: Color(0xff707070))),
                        color: Color(0xffD0EBBC),
                        elevation: 8,
                        child: Text("Register",
                            style: TextStyle(
                                fontSize: 23,
                                color: Color(0xff060606),
                                fontFamily: "Calibri-Bold")),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        }),
                  ),
                )
              ]),
            )
          ]),
        ))));
  }
}
