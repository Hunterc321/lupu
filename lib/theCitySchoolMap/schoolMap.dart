import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SchoolMap extends StatefulWidget {
  @override
  _SchoolMapState createState() => _SchoolMapState();
}

class _SchoolMapState extends State<SchoolMap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                Text(
                  "School Floors",
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
                Image.asset("asset/theCity/theCity_ground.png",
                    height: MediaQuery.of(context).size.height / 6,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width / 1.2),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                GestureDetector(
                  child: Image.asset(
                    "asset/theCity/theCity_1st.png",
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 1.2,
                    fit: BoxFit.fill,
                  ),
                ),
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
            ),
          )
        ],
      ),
    );
  }
}
