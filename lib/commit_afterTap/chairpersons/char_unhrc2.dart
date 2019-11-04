import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

class CharUnhrc2 extends StatefulWidget {
  @override
  _CharUnhrc2State createState() => _CharUnhrc2State();
}

class _CharUnhrc2State extends State<CharUnhrc2> {
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
                "Matei Stoica",
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
                "asset/chairpersons/char_unhrc2ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width/30),
                child: Text(
                  '''After the success of last year's anniversary conference, Matei is ecstatically delighted to return to the UNHRC even more motivated and with higher expectations than before. Our chair would like to show his enormous gratification and appreciation to his delegates for making our conference possible, a very momentous and mesmerizing experience. With disproportionately and bewildering impatience, he is prone to being deeply hurt if the debate level does not raise up and stall up there during the conference, as you may have got used to in the previous editions of IașiMUN.According to him, a winning resolution should be thoroughly built through the nuances alluding to a theoretical and literal approach to the problem.It is highly imperative to note that newcomers are the most welcomed and encouraged to influence the outcome, as the less experienced ones pay the most attention to mistakes that lead to catastrophic situations.''',
                  textAlign: TextAlign.center,
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

