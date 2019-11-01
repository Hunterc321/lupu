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
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';


class ResUnhrc extends StatefulWidget {
  @override
  _ResUnhrcState createState() => _ResUnhrcState();
}
Map<String, dynamic> data;
class _ResUnhrcState extends State<ResUnhrc> {


  Future<String> getData() async {
    var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/"),
        headers: {"Accept": "application/json"});
    data = json.decode(response.body);

    print(data["topics"][0]["resolutions"][0]["passed"]);
    return data["topics"][0]["resolutions"][0]["passed"].toString();
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
            children: <Widget>[
              RaisedButton(onPressed: getData,child: Text("sal"),),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              Text(
                "UNHRC",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              FutureBuilder(
                  future: getData(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData) {
                      if (snapshot.data == "true") {
                        return GestureDetector(
                          onTap: _launchURL,
                          child: Image.asset(
                            "asset/topics/res1Apas.png",
                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 6,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 1.2,
                            fit: BoxFit.fill,
                          ),
                        );
                      }
                      else {
                        return Image.asset(
                          "asset/topics/res1Anot.png",
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 6,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 1.2,
                          fit: BoxFit.fill,
                        );
                      }
                    }
                    return CircularProgressIndicator();

                  }),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              GestureDetector(
                child: Image.asset(
                  "asset/theCity/theCity_2nd.png",
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1.2,
                  fit: BoxFit.fill,
                ),
              ),


            ],
          )
        ],
      ),
    );
  }
}

_launchURL() async {
  var url = data["topics"][0]["resolutions"][0]["linkToResource"].toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
