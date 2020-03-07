import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Cart.dart';
import 'package:handicfaft_firstscreen/Login.dart';
import 'package:handicfaft_firstscreen/ProductDes.dart';
import 'package:handicfaft_firstscreen/Profile.dart';
import 'package:handicfaft_firstscreen/Setting.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        drawer: CusDrawer(),
        backgroundColor: Color(0xff92BF87),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(children: <Widget>[
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
                        Expanded(
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
                      child: SafeArea(
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Productdes()));
                                    },
                                    leading: Image.asset("image/stool.jpg"),
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Stool",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "Callibri Regular"),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        " ₹ 19.10",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(
                                          Icons.shopping_cart,
                                          size: 30,
                                          color: Colors.black87,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        })),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ]),
            )
          ],
        ));
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
