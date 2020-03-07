import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Login.dart';
import 'package:handicfaft_firstscreen/Product.dart';
import 'package:handicfaft_firstscreen/ProductDes.dart';
import 'package:handicfaft_firstscreen/Profile.dart';
import 'package:handicfaft_firstscreen/Setting.dart';

import 'Cart.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  void define() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: CusDrawer(),
      backgroundColor: Color(0xff92BF87),
      body: Column(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Color(0xff173006),
                          ),
                          onPressed: () {
                            setState(() {
                              _scaffoldkey.currentState.openDrawer();
                            });
                          }),
                      Container(
                        width: 45,
                        height: 45,
                        child: Image.asset(
                          "image/handicraft.png",
                        ),
                      ),
                      Container(
                        child: Text(
                          "HANDICRAFT",
                          style: TextStyle(
                              color: Color(0xff173006),
                              fontSize: 29,
                              fontFamily: "zexo"),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: IconButton(
                                icon: Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Color(0xff173006),
                                ),
                                onPressed: null),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: PopupMenuButton(
                            onSelected: (result) {
                              setState(() {
                                if (result == "profile") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()));
                                }
                                if (result == "setting") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Setting()));
                                }
                                if (result == "cart") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart()));
                                }
                                if (result == "logout") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                }
                              });
                            },
                            icon: Icon(
                              Icons.more_vert,
                              size: 30,
                              color: Color(0xff173006),
                            ),
                            color: Color(0xffD0EBBC),
                            itemBuilder: (BuildContext context) => [
                                  PopupMenuItem(
                                    value: "profile",
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.person,
                                              color: Color(0xff204408),
                                            ),
                                            Text(
                                              "Profile",
                                              style: TextStyle(
                                                color: Color(0xff204408),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem(
                                      value: "setting",
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.settings,
                                                color: Color(0xff204408),
                                              ),
                                              Text(
                                                "Setting",
                                                style: TextStyle(
                                                    color: Colors.green[900]),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  PopupMenuItem(
                                    value: "cart",
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.shopping_cart,
                                              color: Color(0xff204408),
                                            ),
                                            Text(
                                              "Cart",
                                              style: TextStyle(
                                                  color: Color(0xff204408)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem(
                                      value: "logout",
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.exit_to_app,
                                                color: Color(0xff204408),
                                              ),
                                              Text(
                                                "Log Out",
                                                style: TextStyle(
                                                    color: Colors.green[900]),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ))
                                ]),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  height: MediaQuery.of(context).size.height - 92,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffE6F3E4),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(65.0),
                        topRight: Radius.circular(65.0)),
                  ),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 110, top: 10),
                          child: Text(
                            "Top Products",
                            style: TextStyle(
                                color: Color(0xff142305),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 50),
                          child: Text(
                            "SEE ALL",
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                          crossAxisCount: 1,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(12.0),
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 10),
                          child: Text(
                            "Offered",
                            style: TextStyle(
                                color: Color(0xff142305),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 80),
                          child: Text(
                            "SEE ALL",
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                          crossAxisCount: 1,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(12.0),
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 10),
                          child: Text(
                            "Releted",
                            style: TextStyle(
                                color: Color(0xff142305),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 80),
                          child: Text(
                            "SEE ALL",
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                          crossAxisCount: 1,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(12.0),
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdes()));
                              },
                              child: Card(
                                margin: EdgeInsets.only(left: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "image/stool.jpg",
                                      height:
                                          MediaQuery.of(context).size.height /
                                              9,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "₹190.0",
                                        style: TextStyle(
                                            fontFamily: " Calibri-Bold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
          // Add your onPressed code here!
        },
        child: Icon(
          Icons.shopping_cart,
          color: Colors.black,
          size: 33,
        ),
        backgroundColor: Color(0xffD0EBBC),
      ),
    );
  }
}

class CusDrawer extends StatefulWidget {
  @override
  _CusDrawerState createState() => _CusDrawerState();
}

class _CusDrawerState extends State<CusDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 110,
      color: Color(0xffD0EBBC),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 150, top: 18.0),
          child: ListTile(
            leading: Text(
              "Category",
              style: TextStyle(
                  fontFamily: "Calibri-Bold",
                  fontSize: 30,
                  color: Color(0xff152907)),
            ),
          ),
        ),
        Divider(
          color: Color(0xff707070),
          thickness: 1,
        ),
        ListTile(
          leading: Text(
            "Decoration",
            style: TextStyle(
                fontFamily: "Calibri-Regular",
                fontSize: 30,
                color: Color(0xff447D1D)),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Product()));
          },
        ),
        ListTile(
          leading: Text(
            "Clothing",
            style: TextStyle(
                fontFamily: "Calibri-Regular",
                fontSize: 30,
                color: Color(0xff447D1D)),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Product()));
          },
        ),
        ListTile(
          leading: Text(
            "Watch",
            style: TextStyle(
                fontFamily: "Calibri-Regular",
                fontSize: 30,
                color: Color(0xff447D1D)),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Product()));
          },
        ),
        ListTile(
          leading: Text(
            "Emitation",
            style: TextStyle(
                fontFamily: "Calibri-Regular",
                fontSize: 30,
                color: Color(0xff447D1D)),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Product()));
          },
        ),
        ListTile(
          leading: Text(
            "Toys",
            style: TextStyle(
                fontFamily: "Calibri-Regular",
                fontSize: 30,
                color: Color(0xff447D1D)),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Product()));
          },
        ),
      ]),
    );
  }
}
