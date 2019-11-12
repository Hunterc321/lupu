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

class ResSpec extends StatefulWidget {
  @override
  _ResSpecState createState() => _ResSpecState();
}
Map<String, dynamic> data;
Map<String, dynamic> data1;
Map<String, dynamic> data2;
Map<String, dynamic> data3;
Map<String, dynamic> data4;
Future<String> getData() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["topics"][0]["resolutions"][0]["passed"]);
  return data["topics"][0]["resolutions"][0]["passed"].toString();
}

Future<String> getDataPDF() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data = json.decode(response.body);

  print(data["topics"][0]["resolutions"][0]["linkToResource"]);
  return data["topics"][0]["resolutions"][0]["linkToResource"].toString();
}

Future<String> getData1() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data1 = json.decode(response.body);

  print(data1["topics"][0]["resolutions"][1]["passed"]);
  return data1["topics"][0]["resolutions"][1]["passed"].toString();
}

Future<String> getData1PDF() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data1 = json.decode(response.body);

  print(data1["topics"][0]["resolutions"][1]["linkToResource"]);
  return data1["topics"][0]["resolutions"][1]["linkToResource"].toString();
}

Future<String> getData2() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data2 = json.decode(response.body);

  print(data2["topics"][0]["resolutions"][2]["passed"]);
  return data2["topics"][0]["resolutions"][2]["passed"].toString();
}

Future<String> getData2PDF() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data2 = json.decode(response.body);

  print(data2["topics"][0]["resolutions"][2]["linkToResource"]);
  return data2["topics"][0]["resolutions"][2]["linkToResource"].toString();
}

Future<String> getData3() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data3 = json.decode(response.body);

  print(data3["topics"][0]["resolutions"][3]["passed"]);
  return data3["topics"][0]["resolutions"][3]["passed"].toString();
}

Future<String> getData3PDF() async {
  var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/committees?title=SPECPOL"),
      headers: {"Accept": "application/json"});
  data3 = json.decode(response.body);

  print(data3["topics"][0]["resolutions"][3]["linkToResource"]);
  return data3["topics"][0]["resolutions"][3]["linkToResource"].toString();
}
class _ResSpecState extends State<ResSpec> {
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
                        return Image.asset(
                          "asset/topics/res1Anot.png",
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 1.2,
                          fit: BoxFit.fill,
                        );
                      }
                    }
                    return CircularProgressIndicator();
                  }),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              FutureBuilder(
                  future: getData1(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data == "true") {
                        return GestureDetector(
                          onTap: _launchURL1,
                          child: Image.asset(
                            "asset/topics/res2Apass.png",
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 1.2,
                            fit: BoxFit.fill,
                          ),
                        );
                      } else {
                        return Image.asset(
                          "asset/topics/res2Anot.png",
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 1.2,
                          fit: BoxFit.fill,
                        );
                      }
                    }
                    return CircularProgressIndicator();
                  }),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              FutureBuilder(
                  future: getData2(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data == "true") {
                        return GestureDetector(
                          onTap: _launchURL2,
                          child: Image.asset(
                            "asset/topics/res3Bpas.png",
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 1.2,
                            fit: BoxFit.fill,
                          ),
                        );
                      } else {
                        return Image.asset(
                          "asset/topics/res3Bnot.png",
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 1.2,
                          fit: BoxFit.fill,
                        );
                      }
                    }
                    return CircularProgressIndicator();
                  }),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              FutureBuilder(
                  future: getData3(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data == "true") {
                        return GestureDetector(
                          onTap: _launchURL3,
                          child: Image.asset(
                            "asset/topics/res4Bpas.png",
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 1.2,
                            fit: BoxFit.fill,
                          ),
                        );
                      } else {
                        return Image.asset(
                          "asset/topics/res4Bnot.png",
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 1.2,
                          fit: BoxFit.fill,
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
      "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/" + pdf;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL1() async {
  var pdf = await getData1PDF();
  var url =
      "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/" + pdf;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  var pdf = await getData2PDF();
  var url =
      "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/" + pdf;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  var pdf = await getData3PDF();
  var url =
      "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/" + pdf;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

