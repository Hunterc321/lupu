import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageClickEvent extends StatefulWidget {
  @override
  ImageClickEventState createState() {
    return new ImageClickEventState();
  }
}

class ImageClickEventState extends State<ImageClickEvent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/sideMenuBackground.png"),
                    fit: BoxFit.cover))),
        new Scaffold(
          backgroundColor: Colors.transparent,
          appBar:PreferredSize(child: AppBar(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    ), preferredSize: Size.fromHeight(150)) ,
          body: Column( children: <Widget>[
            GestureDetector(
                onTap: _launchURLFaceBook,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(90.0,0,0,20),
                  child: Container(
                      alignment: Alignment(0, -0.8),
                      child: Image.asset(
                        'asset/sideMenuFacebook.png',
                      )),
                )),
            GestureDetector(
                onTap:_launchURLInstagram ,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(90,0,0,20),
                  child: Container(

                      child: Image.asset(
                        'asset/sideMenuInstagram.png',
                      )),
                )),
            GestureDetector(
                onTap: _launchURLFaceBook,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(115.0,0,0,20),
                  child: Container(

                      child: Image.asset(
                        'asset/sideMenuWebsite.png',
                      )),
                )),
            GestureDetector(
                onTap: _launchURLFaceBook,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(115.0,0,0,20),
                  child: Container(

                      child: Image.asset(
                        'asset/sideMenuContact.png',
                      )),
                ))



          ]),
        )
      ],
    );
  }
}

_launchURLFaceBook() async {
  const url = "https://facebook.com";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  _launchURLInstagram() async {
    const url = "https://instagram.com";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }

  }
