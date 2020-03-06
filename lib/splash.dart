import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:handicfaft_firstscreen/Login.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffD8F6D5), Color(0xff023E12)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: AvatarGlow(
                    startDelay: Duration(milliseconds: 1000),
                    glowColor: Color(0xff023E12),
                    endRadius: 140.0,
                    duration: Duration(milliseconds: 2000),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffD8F6D5),
                        child: Image.asset(
                          'image/handicraft.png',
                          height: 100,
                        ),
                        radius: 70.0,
                      ),
                    ),
                    shape: BoxShape.circle,
                    animate: true,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    "HANDICRAFT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "zexo",
                      fontSize: 53,
                      color: Color(0xff19370e),
                      shadows: [
                        Shadow(
                            // bottomLeft
                            offset: Offset(-1.5, -1.5),
                            color: Color(0xffA7C495)),
                        Shadow(
                            // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Color(0xffA7C495)),
                        Shadow(
                            // topRight
                            offset: Offset(1.5, 1.5),
                            color: Color(0xffA7C495)),
                        Shadow(
                            // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Color(0xffA7C495)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Text(
                    "online handicraft shopping mall"
                    "\nselling something special",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Calibri",
                      fontStyle: FontStyle.normal,
                      color: Color(0xffe1e9dc),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
