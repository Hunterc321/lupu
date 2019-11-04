import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
class CharCris1 extends StatefulWidget {
  @override
  _CharCris1State createState() => _CharCris1State();
}

class _CharCris1State extends State<CharCris1> {
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
          ListView(
            children: <Widget>[
              Text(
                "Cosmin Ungureanu",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Image.asset(
                "asset/chairpersons/char_cris1ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width/30),
                child: Text(
                  '''During his career Cosmin has been an inexperienced delegate, a decent delegate, a little over decent delegate and even though, for him, it may have seemed like the transformation happened overnight, a Deputy Chairperson, a Secretary-General and a Crisis expert with comprehensive, practical knowledge. His sole purpose this year, besides moderating his committee to the best of his abilities, is helping delegates reach their true potential because most people aren’t born “gifted” and there is plenty of room at the top of the MUN food chain. Maybe this sounds like another basic promise that is meant for compulsive readers but he thinks that his 3-year successful journey and the fact that he wasn’t anything special at the beginning prove his intentions and qualifications for the job he claims.''',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 45,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      letterSpacing: 0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
