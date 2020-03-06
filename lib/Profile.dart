import 'package:flutter/material.dart';

import 'homepage.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE6F3E4),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 360, top: 20),
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
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
//                  backgroundImage: NetworkImage(
//                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSIi7h6vVtC7kqFfTJe11G3qhRx-tR-WMw62b7Ril6nAW1PfW8H",
//                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "Change Profile Picture",
                  style: TextStyle(
                      color: Color(0xff152907),
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: Colors.green[900],
                thickness: 2,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Full Name",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "User ID",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Bill Date",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Email ID",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Gender",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Mobile No.",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Adrress",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "About",
                          style:
                              TextStyle(color: Color(0xff152907), fontSize: 20),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 230),
                child: SizedBox(
                  height: 50,
                  width: 114,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xff707070)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) => homepage()));
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Color(0xff060606),
                          fontFamily: " Calibri-Bold",
                          fontSize: 20),
                    ),
                    color: Color(0xffD0EBBC),
                    elevation: 15,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
