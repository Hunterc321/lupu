import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_eco.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_ecosoc.dart';
import 'package:flutter_lupu2/commit_afterTap/schedules/sch_eco.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

class Ecosoc extends StatefulWidget {
  @override
  _EcosocState createState() => _EcosocState();
}

class _EcosocState extends State<Ecosoc> {
  String _docDef = "asset/studyGuide/sgEco.pdf";
  Future<String> pdfDef() async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_docDef);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docDef';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
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
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Committees",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 119, 172, 5),
                      fontSize: MediaQuery.of(context).size.height / 20,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MontSerrat",
                      letterSpacing: 0),
                ),
                Image.asset(
                  "asset/commitIcons/commitPopup/commit_ecosoc_popup.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width / 1.2,
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.2),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SchEco()));
                      },
                      child: Text(
                        "Schedule",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 33.5,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontFamily: "MontSerrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TopEco()));
                      },
                      child: Text(
                        "Topics",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 33.5,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontFamily: "MontSerrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6),
                    child: GestureDetector(
                      onTap: () => pdfDef().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Text(
                        "Study Guide",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 33.5,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontFamily: "MontSerrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 6),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => CharEco()));
                      },
                      child: Text(
                        "Chairpersons",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 33.5,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontFamily: "MontSerrat",
                            letterSpacing: 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FullPdfViewerScreen extends StatelessWidget {
  final String pdfPath;

  FullPdfViewerScreen(this.pdfPath);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: Text("Document"),
        ),
        path: pdfPath);
  }
}
