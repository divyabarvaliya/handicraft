import 'package:flutter/material.dart';

import 'homepage.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff92BF87),
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xff92BF87),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.green[900],
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => homepage()));
                                });
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 15),
                          child: Icon(
                            Icons.settings,
                            size: 30,
                            color: Colors.green[900],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: Text(
                            "SETTING",
                            style: TextStyle(
                              color: Colors.green[900],
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE6F3E4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(65.0),
                          topRight: Radius.circular(65.0)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 50, bottom: 20),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                labelText: "Update Profile",
                                labelStyle: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 20),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                labelText: "Change Password",
                                labelStyle: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 20),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                labelText: "Primary Address",
                                labelStyle: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 20),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                labelText: "Secondary Address",
                                labelStyle: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 30),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
//                                suffix: Switch(
//                                  value: isSwitched,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      isSwitched = value;
//                                    });
//                                  },
//                                  activeTrackColor: Color(0xff177245),
//                                  activeColor: Color(0xff00CED1),
//                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                labelText: "Dark Mode",
                                labelStyle: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: SizedBox(
                              width: 114.0,
                              height: 40.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (Context) => homepage()));
                                },
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Color(0xff060606),
                                      fontSize: 23,
                                      fontFamily: "Calibri-Bold"),
                                ),
                                color: Color(0xffD0EBBC),
                                elevation: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
