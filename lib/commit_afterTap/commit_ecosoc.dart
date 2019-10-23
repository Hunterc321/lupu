import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

class Ecosoc extends StatefulWidget {
  @override
  _EcosocState createState() => _EcosocState();
}

class _EcosocState extends State<Ecosoc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Stack(fit: StackFit.expand,
      children: <Widget>[
        new DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/commit_background.png"),
                    fit: BoxFit.cover))),
        FittedBox(
          child: Container(child: Column(children: <Widget>[
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
              "asset/commitIcons/commitPopup/commit_ecosoc_popup.png",
              fit: BoxFit.fill,

            )












          ],),),
        )




      ],

    ) ,);
  }
}
