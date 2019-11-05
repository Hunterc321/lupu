import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_cris.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/resolution/dir_crisis.dart';
import 'package:flutter_lupu2/commit_afterTap/schedules/sch_crisis.dart';

class Crisis extends StatefulWidget {
  @override
  _CrisisState createState() => _CrisisState();
}

class _CrisisState extends State<Crisis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new DecoratedBox(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/commit_background.png"),
                      fit: BoxFit.cover))),
          FittedBox(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Committees",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 119, 172, 5),
                        fontSize: MediaQuery.of(context).size.height / 20,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                  Image.asset(
                    "asset/commitIcons/commitPopup/commit_crisis_popup.png",
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width / 1.2,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SchCrisis()));
                      },
                      child: Text(
                        "Schedule",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 30,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DirCrisis()));
                      },
                      child: Text(
                        "Sets of directives",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 30,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CharCris()));
                      },
                      child: Text(
                        "Chairpersons",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 30,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
