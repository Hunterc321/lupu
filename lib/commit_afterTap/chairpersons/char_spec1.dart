import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';

class CharSpec1 extends StatefulWidget {
  @override
  _CharSpec1State createState() => _CharSpec1State();
}

class _CharSpec1State extends State<CharSpec1> {
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
                "Andrei Loghin",
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
                "asset/chairpersons/char_spec1ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width/30),
                child: Text(
                  '''Fuelled by his passion for MUNs and the need to be the leader, Andrei has again assumed the role of a Chairperson in the 11th Edition of IașiMUN, and quite possibly the Conference which will end his MUN career. Taking this into account, he decided it was time for a Grand Finale, one to go down in history books: it was time to be the Secretary-General. He knew well enough it was high time for a fresh start in IașiMUN. So, he assembled a team of people he knew he could trust with his life, presented to them his ideas and goals for this year and, well, Big Things Will Happen.
He expects this year to be the best one IașiMUN has ever had thus far, given by the addition of the Security Council, the new Rules of Procedure and the topics which we have carefully picked for delegates from all over the country.''',
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
