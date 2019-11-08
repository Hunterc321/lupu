import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
class CharUnhrc3 extends StatefulWidget {
  @override
  _CharUnhrc3State createState() => _CharUnhrc3State();
}

class _CharUnhrc3State extends State<CharUnhrc3> {
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
                "Matei Pascariu",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Image.asset(
                "asset/chairpersons/char_unhrc3ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width/30),
                child: Text(
                  '''"If you want to do something, do it! And do it right!" That probably sums up how Matei approaches his every goal, but also a piece of advice that he would like to pass on to future delegates. Previous experiences as a delegate were just amazing and now he is ready to take on the next challenge. Friendly and ambitious, but first of all excited for what is yet to come, he will make sure that the UNHRC will be a place for engaging debates, unforgettable moments, entertaining breaks and socials. He is also convinced that a proper and thorough research will make the debate much more interesting overall, so better be prepared, delegates!
''',

                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 45,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MontSerrat",
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
