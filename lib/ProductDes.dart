import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Cart.dart';
import 'package:handicfaft_firstscreen/homepage.dart';

class Productdes extends StatefulWidget {
  @override
  _ProductdesState createState() => _ProductdesState();
}

class _ProductdesState extends State<Productdes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE6F3E4),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 75.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homepage()));
                        },
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Card(
                          margin: EdgeInsets.only(right: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "image/stool.jpg",
                                height: 100,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, right: 82),
                          child: Text(
                            "Stool",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: "Callibri Regular"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Threded Treditional \n Stool",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                                fontFamily: "Callibri Regular"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.black26,
                  indent: 20,
                  endIndent: 20,
                  height: 50,
                  thickness: 2.8,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Text(
                          "Prize : 350.0",
                          style: TextStyle(
                            color: Color(0xff173006),
                            fontSize: 20,
                            fontFamily: "Callibri Regular",
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black45,
                        endIndent: 22,
                        indent: 18,
                      ),
                      ListTile(
                        leading: Text(
                          "Color : black",
                          style: TextStyle(
                            color: Color(0xff173006),
                            fontSize: 20,
                            fontFamily: "Callibri Regular",
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black45,
                        endIndent: 22,
                        indent: 18,
                      ),
                      ListTile(
                        leading: Text(
                          "Size : 18",
                          style: TextStyle(
                            color: Color(0xff173006),
                            fontSize: 20,
                            fontFamily: "Callibri Regular",
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black45,
                        endIndent: 22,
                        indent: 18,
                      ),
                      ListTile(
                        leading: Text(
                          "Quantity : 2",
                          style: TextStyle(
                            color: Color(0xff173006),
                            fontSize: 20,
                            fontFamily: "Callibri Regular",
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black45,
                        endIndent: 22,
                        indent: 18,
                      ),
                      ListTile(
                        leading: Text(
                          "Material : wool",
                          style: TextStyle(
                            color: Color(0xff173006),
                            fontSize: 20,
                            fontFamily: "Callibri Regular",
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black45,
                        endIndent: 22,
                        indent: 18,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: RaisedButton(
                                padding: EdgeInsets.only(
                                    top: 12, bottom: 12, left: 30, right: 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color(0xff707070))),
                                color: Color(0xffD0EBBC),
                                elevation: 8,
                                child: Container(
                                  child: Text("Buy Now",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff060606),
                                          fontFamily: "Calibri-Bold")),
                                ),
                                onPressed: () {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 85),
                            child: RaisedButton(
                                padding: EdgeInsets.only(
                                    top: 12, bottom: 12, left: 20, right: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Color(0xff707070))),
                                color: Color(0xffD0EBBC),
                                elevation: 8,
                                child: Container(
                                  child: Text("Add To Cart",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff060606),
                                          fontFamily: "Calibri-Bold")),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart()));
                                }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
        ));
  }
}
