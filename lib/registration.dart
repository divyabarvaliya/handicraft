import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Login.dart';

class registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Color(0xffE6F3E4),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Container(
            height: 195,
            width: 194,
            child: Image.asset(
              "image/handicraft.png",
              colorBlendMode: BlendMode.multiply,
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
                  "Registration",
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
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorWidth: 30,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "Email Address",
                labelStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorWidth: 30,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "Re-Password",
                labelStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorWidth: 15,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "First Name",
                labelStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              cursorWidth: 15,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "Last Name",
                labelStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              cursorWidth: 30,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "Mobile No",
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
                padding: const EdgeInsets.only(left: 60.0, top: 30, bottom: 20),
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
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, top: 30, bottom: 20),
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
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      }),
                ),
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
