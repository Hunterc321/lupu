import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_who.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_who.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';



class SchWho extends StatefulWidget {
  @override
  _SchWhoState createState() => _SchWhoState();
}

class _SchWhoState extends State<SchWho> {
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

                    FutureBuilder(
                        future: getDataTitle(0),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(0),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(0),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(0),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[

                    FutureBuilder(
                        future: getDataTitle(1),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(1),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(1),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(2),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(2),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(2),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(2),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(3),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(3),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(3),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(3),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(4),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(4),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(4),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(4),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(5),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(5),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(5),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(5),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(6),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(6),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(6),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(6),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(7),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(7),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(7),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(

                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(7),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(8),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(8),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(8),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child:FutureBuilder(
                    future: getDataDesc(8),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(9),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(9),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(9),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(9),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(10),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(10),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(10),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(10),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(11),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(11),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(11),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(11),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(12),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(12),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(12),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(12),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(13),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(13),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(13),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(13),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(14),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(14),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(14),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(14),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(15),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(15),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(15),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(15),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(16),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(16),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(16),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(16),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

                    FutureBuilder(
                        future: getDataTitle(17),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {

                            return Text(
                              snapshot.data,
                              style: TextStyle(
                                  color: Color.fromRGBO(17, 29, 74, 5),
                                  fontSize: MediaQuery.of(context).size.height / 40,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "MontSerrat",
                                  letterSpacing: 0

                              ),

                            );

                          }
                          return CircularProgressIndicator();
                        }),


                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataSch(17),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: FutureBuilder(
                          future: getDataLoc(17),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {

                              return Text(
                                snapshot.data,
                                style: TextStyle(
                                    color: Color.fromRGBO(17, 29, 74, 5),
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "MontSerrat",
                                    letterSpacing: 0

                                ),

                              );

                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getDataDesc(17),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        return Text(
                          snapshot.data,
                          style: TextStyle(
                              color: Color.fromRGBO(17, 29, 74, 5),
                              fontSize: MediaQuery.of(context).size.height / 40,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "MontSerrat",
                              letterSpacing: 0

                          ),

                        );

                      }
                      return CircularProgressIndicator();
                    }),
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

Map<String, dynamic> data;
Future<String> getDataTitle(int i) async {
  var response = await http.get(Uri.encodeFull("https://iasimun-cneris.tuiasi.ro/api/committees?title=WHO"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["events"][i]["title"]);
  return data["events"][i]["title"].toString();
}
Future<String> getDataSch(int i) async {
  var response = await http.get(Uri.encodeFull("https://iasimun-cneris.tuiasi.ro/api/committees?title=WHO"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["events"][i]["schedule"]);
  return data["events"][i]["schedule"].toString();
}
Future<String> getDataLoc(int i) async {
  var response = await http.get(Uri.encodeFull("https://iasimun-cneris.tuiasi.ro/api/committees?title=WHO"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["events"][i]["location"]);
  return data["events"][i]["location"].toString();
}
Future<String> getDataDesc(int i) async {
  var response = await http.get(Uri.encodeFull("https://iasimun-cneris.tuiasi.ro/api/committees?title=WHO"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["events"][i]["description"]);
  return data["events"][i]["description"].toString();
}