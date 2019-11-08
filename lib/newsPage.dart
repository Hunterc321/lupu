import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lupu2/newsPage.dart';
import 'package:custom_navigator/custom_navigator.dart';

import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Stack(fit: StackFit.expand,

      children: <Widget>[

        new DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/background.png"),
                    fit: BoxFit.cover))),

        Scaffold(backgroundColor: Colors.transparent,
            appBar: AppBar(automaticallyImplyLeading: true,
                leading: IconButton(icon:Icon(Icons.arrow_back),
                  onPressed:() => Navigator.pop(context, true),
                )

            ),
        ),
        Padding(
          padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height/8),
          child: Container(child: Column(children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height/100,),
            Text(
              "NEWS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height / 18,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MontSerrat",
                  letterSpacing: 0),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/40,),

            Image.asset(
                "asset/newsPage/news_d1.png",
                height:MediaQuery.of(context).size.height/6 ,fit:BoxFit.fill,
                width:MediaQuery.of(context).size.width/1.2


            ),
            SizedBox(height:MediaQuery.of(context).size.height/20),

            GestureDetector(

              child: Image.asset(
                "asset/newsPage/news_d2.png",
                height:MediaQuery.of(context).size.height/6,
                width:MediaQuery.of(context).size.width/1.2 ,
                fit: BoxFit.fill,




              ),

            ),
            SizedBox(height:MediaQuery.of(context).size.height/20),

            GestureDetector(

              child: Image.asset(
                "asset/newsPage/news_d3.png",
                height:MediaQuery.of(context).size.height/6,
                width:MediaQuery.of(context).size.width/1.2 ,
                fit: BoxFit.fill,

              ),
            ),
















          ],),),
        )


      ],

    ),);
  }
}

















