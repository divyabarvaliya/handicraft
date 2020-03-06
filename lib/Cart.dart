import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Product.dart';
import 'package:handicfaft_firstscreen/homepage.dart';

import 'Order.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff92BF87),
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
                      color: Color(0xff92BF87),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.keyboard_arrow_down),
                              color: Color(0xff173006),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => homepage()));
                              }),
                          Text(
                            "CART",
                            style: TextStyle(
                                color: Color(0xff173006),
                                fontFamily: "Calibri-Bold",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              "4 ITEMS",
                              style: TextStyle(
                                  color: Color(0xff173006), fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height - 92,
                      width: MediaQuery.of(context).size.width,
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
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.remove_circle_outline),
                                      iconSize: 30,
                                      onPressed: null),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.5,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      child: Card(
                                        margin: EdgeInsets.only(right: 30),
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
                                                left: 8.0),
                                            child: Text(
                                              "Quantity:2",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "Stool",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 50.0),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "x ₹200.0",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20.0, right: 10.0),
                                              child: RaisedButton(
                                                  padding: EdgeInsets.only(
                                                      top: 10, bottom: 10),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xff707070))),
                                                  color: Color(0xffD0EBBC),
                                                  elevation: 8,
                                                  child: Container(
                                                    child: Text("Buy Now",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff060606),
                                                            fontFamily:
                                                                "Calibri-Bold")),
                                                  ),
                                                  onPressed: () {}),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30.0, left: 12.0, right: 12.0),
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.remove_circle_outline),
                                      iconSize: 30,
                                      onPressed: null),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.5,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      child: Card(
                                        margin: EdgeInsets.only(right: 30),
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
                                                left: 2.0),
                                            child: Text(
                                              "Quantity:2",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "Stool",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 50.0),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              "x ₹200.0",
                                              style: TextStyle(
                                                  color: Color(0xff173006),
                                                  fontFamily: "Calibri-Bold",
                                                  fontSize: 18),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20.0, right: 10.0),
                                              child: RaisedButton(
                                                  padding: EdgeInsets.only(
                                                      top: 10, bottom: 10),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      side: BorderSide(
                                                          color: Color(
                                                              0xff707070))),
                                                  color: Color(0xffD0EBBC),
                                                  elevation: 8,
                                                  child: Container(
                                                    child: Text("Buy Now",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff060606),
                                                            fontFamily:
                                                                "Calibri-Bold")),
                                                  ),
                                                  onPressed: () {}),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30.0, left: 12.0, right: 12.0),
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 45.0, top: 20, bottom: 30),
                                    child: Text(
                                      "TOTAL",
                                      style: TextStyle(
                                          color: Color(0xff173006),
                                          fontFamily: "Calibri-Bold",
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120.0, top: 20, bottom: 30),
                                    child: Text(
                                      "₹650.0",
                                      style: TextStyle(
                                          color: Color(0xff173006),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 45.0),
                                    child: Text(
                                      "Subtotal:",
                                      style: TextStyle(
                                          color: Color(0xff173006),
                                          fontFamily: "Calibri-Bold",
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 120.0),
                                    child: Text(
                                      "₹400.0",
                                      style: TextStyle(
                                        color: Color(0xff173006),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 45.0),
                                    child: Text(
                                      "Shipping:",
                                      style: TextStyle(
                                          color: Color(0xff173006),
                                          fontFamily: "Calibri-Bold",
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 120.0),
                                    child: Text(
                                      "₹150.0",
                                      style: TextStyle(
                                        color: Color(0xff173006),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 45.0),
                                    child: Text(
                                      "Tax:",
                                      style: TextStyle(
                                          color: Color(0xff173006),
                                          fontFamily: "Calibri-Bold",
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 120.0),
                                    child: Text(
                                      "₹50.0",
                                      style: TextStyle(
                                        color: Color(0xff173006),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      child: SizedBox(
                                        width: 90.0,
                                        height: 45.0,
                                        child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                side: BorderSide(
                                                    color: Color(0xff707070))),
                                            color: Color(0xffD0EBBC),
                                            elevation: 8,
                                            child: Container(
                                              child: Text("Buy All",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Color(0xff060606),
                                                      fontFamily:
                                                          "Calibri-Bold")),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Ordeer()));
                                            }),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      child: SizedBox(
                                        width: 90.0,
                                        height: 45.0,
                                        child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                side: BorderSide(
                                                    color: Color(0xff707070))),
                                            color: Color(0xffD0EBBC),
                                            elevation: 8,
                                            child: Container(
                                              child: Text("Clear Cart",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Color(0xff060606),
                                                      fontFamily:
                                                          "Calibri-Bold")),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Product()));
                                            }),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
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
