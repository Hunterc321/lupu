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

class ResUnsc extends StatefulWidget {
  @override
  _ResUnscState createState() => _ResUnscState();
}
Map<String, dynamic> data;
Map<String, dynamic> data1;
Map<String, dynamic> data2;

Future<String> getData() async {
  var response = await http.get(Uri.encodeFull("https://iasimun-cneris.tuiasi.ro/api/committees?title=UNSC"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["topics"][0]["resolutions"][0]["passed"]);
  return data["topics"][0]["resolutions"][0]["passed"].toString();
}

Future<String> getDataPDF() async {
  var response = await http.get(Uri.encodeFull("https://iasimun-cneris.tuiasi.ro/api/committees?title=UNSC"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["topics"][0]["resolutions"][0]["linkToResource"]);
  return data["topics"][0]["resolutions"][0]["linkToResource"].toString();
}



class _ResUnscState extends State<ResUnsc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              Text(
                "SPECPOL",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              FutureBuilder(
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data == "true") {
                        return GestureDetector(
                          onTap: _launchURL,
                          child: Image.asset(
                            "asset/topics/res1Apas.png",
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 1.2,
                            fit: BoxFit.fill,
                          ),
                        );
                      } else {
                        return GestureDetector(
                          onTap:_launchURL ,
                          child: Image.asset(
                            "asset/topics/res1Anot.png",
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 1.2,
                            fit: BoxFit.fill,
                          ),
                        );
                      }
                    }
                    return CircularProgressIndicator();
                  }),

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



