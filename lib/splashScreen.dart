import 'package:flutter/material.dart';
import 'package:flutter_lupu2/main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 2),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(fit: StackFit.expand,
      children: <Widget>[
        GestureDetector(
          onTap: () {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) =>MyApp()));
    },


            child: Image.asset("asset/splash.png",fit: BoxFit.fill,)),


      ],

      ),

    );
  }
}
