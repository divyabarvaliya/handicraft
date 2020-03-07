import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Cart.dart';

class Productdes extends StatefulWidget {
  @override
  _ProductdesState createState() => _ProductdesState();
}

class _ProductdesState extends State<Productdes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F3E4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  iconSize: 35,
                  onPressed: () {}),
              //image and and tena name valo part is Row()
              Row(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        // margin: EdgeInsets.only(right: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "image/stool.jpg",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height / 6,
                              width: MediaQuery.of(context).size.width / 5,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Stool",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Callibri Regular"),
                        ),
                        Text(
                          "Threded Treditional \nStool",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontFamily: "Callibri Regular"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.black26,
                indent: 20,
                endIndent: 20,
                height: 20,
                thickness: 2.8,
              ),
              Column(
                children: <Widget>[
                  ListTile(
                    leading: Text(
                      "Prize : ‎₹‎ 19.99",
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 140.0,
                    height: 45.0,
                    child: RaisedButton(
                        padding: EdgeInsets.only(
                            top: 12, bottom: 12, left: 20, right: 20),
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
                  SizedBox(
                    width: 90,
                  ),
                  SizedBox(
                    width: 140.0,
                    height: 45.0,
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
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Cart()));
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
