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
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class DirCrisis extends StatefulWidget {
  @override
  _DirCrisisState createState() => _DirCrisisState();
}

Map<String, dynamic> data;
Future<String> getDataPDF() async {
  var response = await http.get(Uri.encodeFull("https://iasimun-cneris.tuiasi.ro/api/committees?title=CRISIS"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["topics"][0]["resolutions"][0]["linkToResource"]);
  return data["topics"][0]["resolutions"][0]["linkToResource"].toString();
}
class _DirCrisisState extends State<DirCrisis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          ListView(
            children: <Widget>[
              Text(
                "Sets Of Directives",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width/10),
                child: GestureDetector(
                  onTap: _launchURL,
                  child: Image.asset(
                    "asset/topics/SODs.png",
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 2,fit: BoxFit.fill,
                  ),
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
  var pdf = await getDataPDF();
  var url =
      "https://iasimun-cneris.tuiasi.ro/api/files/resolution/" + pdf;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
