import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_spec.dart';

class Specpol extends StatefulWidget {
  @override
  _SpecpolState createState() => _SpecpolState();
}

class _SpecpolState extends State<Specpol> {
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
                        fontSize: MediaQuery.of(context).size.height / 5,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                  Image.asset(
                    "asset/commitIcons/commitPopup/commit_specpol_popup.png",
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.2),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 1.9),
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
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 1.9),
                    child: Text(
                      "Topics",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 30,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Robot",
                          letterSpacing: 0),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 1.9),
                    child: Text(
                      "Study Guide",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 30,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Robot",
                          letterSpacing: 0),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 1.9),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CharSpec()));
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
