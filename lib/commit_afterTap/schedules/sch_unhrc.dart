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
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

class SchUnhrc extends StatefulWidget {
  @override
  _SchUnhrcState createState() => _SchUnhrcState();
}

class _SchUnhrcState extends State<SchUnhrc> {
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
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Text(
                "DAY 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 20,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(17, 29, 74, 5),
                    fontWeight: FontWeight.bold,
                    fontFamily: "montserrat",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),

              Container(
                height:MediaQuery.of(context).size.height/35 ,
                width:MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35 ,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection:  Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(

                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Text(
                "DAY 2",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 20,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(17, 29, 74, 5),
                    fontWeight: FontWeight.bold,
                    fontFamily: "montserrat",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Text(
                "DAY 3",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 20,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(17, 29, 74, 5),
                    fontWeight: FontWeight.bold,
                    fontFamily: "montserrat",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                height:MediaQuery.of(context).size.height/35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        "Event Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(17, 29, 74, 5),
                            fontSize: MediaQuery.of(context).size.height / 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                            fontFamily: "montserrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 40,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "montserrat",
                      letterSpacing: 0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
