import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

import 'package:path_provider/path_provider.dart';


class RulesOfProcedures extends StatefulWidget {
  @override
  _RulesOfProceduresState createState() => _RulesOfProceduresState();
}

class _RulesOfProceduresState extends State<RulesOfProcedures> {
  String _documentPath = 'asset/rulesPDF/full.pdf';

//  Future<String> prepareTestPdf() async {
//    final ByteData bytes =
//    await DefaultAssetBundle.of(context).load(_documentPath);
//    final Uint8List list = bytes.buffer.asUint8List();
//
//    final tempDir = await getTemporaryDirectory();
//    final tempDocumentPath = '${tempDir.path}/$_documentPath';
//
//    final file = await File(tempDocumentPath).create(recursive: true);
//    file.writeAsBytesSync(list);
//    return tempDocumentPath;
//  }


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
                "RULES OF",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height / 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              Text(
                "PROCEDURES",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height / 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 30),
              Padding(
                padding:
                EdgeInsets.all(MediaQuery
                    .of(context)
                    .size
                    .height / 100),
                child: GestureDetector(
//                  onTap: () =>
//                      prepareTestPdf().then((path) {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => FullPdfViewerScreen(path)),
//                        );
//                      }),

                  child: Image.asset(
                    "asset/rulesOP/rules_full.png",
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 100),
                    child: Image.asset(
                      "asset/rulesOP/rules_definitions.png",
                      fit: BoxFit.fill,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 4,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2.2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 50),
                    child: Image.asset(
                        "asset/rulesOP/rules_conduct.png",
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 100),
                    child: Image.asset(
                        "asset/rulesOP/rules_points.png",
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 50),
                    child: Image.asset(
                        "asset/rulesOP/rules_regular.png",
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 100),
                    child: Image.asset(
                        "asset/rulesOP/rules_crisis.png",
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 50),
                    child: Image.asset(
                        "asset/rulesOP/rules_unsc.png",
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 100),
                    child: Image.asset(
                        "asset/rulesOP/rules_voting.png",
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery
                            .of(context)
                            .size
                            .width / 50),
                    child: Image.asset(
                        "asset/rulesOP/rules_reso.png",
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

}

//class FullPdfViewerScreen extends StatelessWidget {
//  final String pdfPath;
//
//  FullPdfViewerScreen(this.pdfPath);
//
//  @override
//  Widget build(BuildContext context) {
//    return PDFViewerScaffold(
//        appBar: AppBar(
//          title: Text("Document"),
//        ),
//        path: pdfPath);
//  }
//}



