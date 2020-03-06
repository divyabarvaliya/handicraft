import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Cart.dart';

class Ordeer extends StatefulWidget {
  @override
  _OrdeerState createState() => _OrdeerState();
}

class _OrdeerState extends State<Ordeer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F3E4),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Color(0xffE6F3E4),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.keyboard_arrow_left),
                              color: Color(0xff173006),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cart()));
                              }),
                          Text(
                            "ORDER DETAILS",
                            style: TextStyle(
                                color: Color(0xff173006),
                                fontFamily: "Calibri-Bold",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height - 92,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.5,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      child: Card(
                                        margin: EdgeInsets.only(right: 20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "image/stool.jpg",
                                              height: 110,
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 150.0),
                                            child: Text(
                                              "Stool",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 140.0),
                                            child: Text(
                                              "₹200.0",
                                              style: TextStyle(
                                                color: Color(0xff173006),
                                                fontFamily: "Calibri-Bold",
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 50.0),
                                            child: Text(
                                              "delivery:25/3/2020",
                                              style: TextStyle(
                                                color: Color(0xff173006),
                                                fontFamily: "Calibri-Bold",
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 60.0),
                                            child: RaisedButton(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    side: BorderSide(
                                                        color:
                                                            Color(0xff707070))),
                                                color: Color(0xffD0EBBC),
                                                elevation: 8,
                                                child: Container(
                                                  child: Text("Cancle Order",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff060606),
                                                          fontFamily:
                                                              "Calibri-Bold")),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Cart()));
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.5,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      child: Card(
                                        margin: EdgeInsets.only(right: 20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "image/stool.jpg",
                                              height: 110,
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 150.0),
                                            child: Text(
                                              "Stool",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 140.0),
                                            child: Text(
                                              "₹200.0",
                                              style: TextStyle(
                                                color: Color(0xff173006),
                                                fontFamily: "Calibri-Bold",
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 50.0),
                                            child: Text(
                                              "delivery:25/3/2020",
                                              style: TextStyle(
                                                color: Color(0xff173006),
                                                fontFamily: "Calibri-Bold",
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 60.0),
                                            child: RaisedButton(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    side: BorderSide(
                                                        color:
                                                            Color(0xff707070))),
                                                color: Color(0xffD0EBBC),
                                                elevation: 8,
                                                child: Container(
                                                  child: Text("Cancle Order",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff060606),
                                                          fontFamily:
                                                              "Calibri-Bold")),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Cart()));
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 12.0, right: 12.0),
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Icon(
                                      Icons.brightness_1,
                                      size: 25,
                                      color: Color(0xff92BF87),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 110, top: 20.0),
                                    child: Icon(
                                      Icons.account_balance,
                                      size: 40,
                                      color: Color(0xff060606),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 180),
                                    child: Column(
                                      children: <Widget>[
                                        Text("Warehouse",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff060606),
                                                fontFamily: "Calibri-Bold",
                                                fontWeight: FontWeight.bold)),
                                        Text("5/03/2020",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff060606),
                                                fontFamily: "Calibri-Bold")),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 290.0),
                              child: Text("|\n|\n|\n|\n|"),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40.0),
                                    child: Icon(
                                      Icons.local_shipping,
                                      size: 40,
                                      color: Color(0xff060606),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(right: 145.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("In Transit",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff060606),
                                                fontFamily: "Calibri-Bold",
                                                fontWeight: FontWeight.bold)),
                                        Text("15/03/2020",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff060606),
                                                fontFamily: "Calibri-Bold")),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 290.0),
                              child: Text("|\n|\n|\n|\n|"),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 35.0),
                                    child: Icon(
                                      Icons.directions_walk,
                                      size: 40,
                                      color: Color(0xff060606),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(right: 145.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("Warehouse",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff060606),
                                                fontFamily: "Calibri-Bold",
                                                fontWeight: FontWeight.bold)),
                                        Text("5/03/2020",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff060606),
                                                fontFamily: "Calibri-Bold")),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
