import 'package:flutter/material.dart';

import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_unsc1.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/resolution/res_unsc.dart';



import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

class TopUnsc extends StatefulWidget {
  @override
  _TopUnscState createState() => _TopUnscState();
}

class _TopUnscState extends State<TopUnsc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          ListView(
            children: <Widget>[
              Text(
                "UNSC",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    letterSpacing: 0),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width/10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>ResUnsc()));
                  },
                  child: Image.asset(
                    "asset/topics/res_unsc.png",
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 2,fit: BoxFit.fill,
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width/50),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>TopUnsc1()));
                  },
                  child: Image.asset(
                    "asset/topics/topic_unsc1ss.png",
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2,fit: BoxFit.fill,
                  ),
                ),
              ),


            ],
          )
        ],
      ),
    );
  }
}
