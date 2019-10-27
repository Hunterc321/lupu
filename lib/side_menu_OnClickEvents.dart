import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_lupu2/newsPage.dart';
import 'package:flutter_lupu2/main.dart';

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
                onTap:()=> Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => News())),
                child: Container(

                    child: Padding(
                      padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/4),
                      child: Image.asset(
                          'asset/sideMenuNews.png',fit: BoxFit.fill,height:MediaQuery.of(context).size.height/10 ,
                      ),
                    ))),
            SizedBox(height: MediaQuery.of(context).size.height / 30),

            GestureDetector(
                onTap: _launchURLFaceBook,
                child: Container(

                    child: Padding(
                      padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/6),
                      child: Image.asset(
                        'asset/sideMenuFacebook.png',fit: BoxFit.fill
                      ),
                    ))),
            GestureDetector(
                onTap:_launchURLInstagram ,
                child: Container(

                    child: Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/7.5),
                      child: Image.asset(
                        'asset/sideMenuInstagram.png',fit: BoxFit.fill,
                      ),
                    ))),
            GestureDetector(
                onTap: _launchURLFaceBook,
                child: Container(

                    child: Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/4.5),
                      child: Image.asset(
                        'asset/sideMenuWebsite.png',fit: BoxFit.fill
                      ),
                    ))),
            GestureDetector(
                onTap: _launchURLFaceBook,
                child: Container(

                    child: Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/4.5),
                      child: Image.asset(
                        'asset/sideMenuContact.png',fit: BoxFit.fill
                      ),
                    )))



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
