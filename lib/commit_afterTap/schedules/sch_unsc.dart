import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unsc.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_unsc.dart';

class SchUnsc extends StatefulWidget {
  @override
  _SchUnscState createState() => _SchUnscState();
}

class _SchUnscState extends State<SchUnsc> {
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
                "DAY 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Text(
                "DAY 2",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
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
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color:Colors.black))

                ),
                child: Row(
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
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
                            fontWeight: FontWeight.bold,
                            fontFamily: "Robot",
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
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
