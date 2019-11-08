import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CharUnhrc1 extends StatefulWidget {
  @override
  _CharUnhrc1State createState() => _CharUnhrc1State();
}

class _CharUnhrc1State extends State<CharUnhrc1> {
  Map<String,dynamic> data;

  Future<String> getData() async {
    var response = await http.get(Uri.encodeFull("http://10.0.2.2:3000/api/"),
        headers: {"Accept": "application/json"});
    data = json.decode(response.body);
    print(data["topics"][0]["resolutions"][0]["passed"]);
    return "Success!";
  }

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
                "Bianca Samoila",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Image.asset(
                "asset/chairpersons/char_unhrc1ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width/30),
                child: Text(
                  '''With this IasiMUN being her 8th conference and the second as a chairperson, Bianca has grown a lot the past year (intellectually speaking, not so much in height though). She aspires to foster an environment of respect, cooperation and intellectual curiosity, leading to a conference full of fruitful debate. In her limited free time, Bianca finds herself in coffee shops where she can easily ease into pretending to be working. 
She is looking forward to the conference and will be doing her best to make it a great experience for every delegate!''',

                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 45,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MontSerrat",
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
