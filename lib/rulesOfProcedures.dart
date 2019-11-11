import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

class RulesOfProcedures extends StatefulWidget {
  @override
  _RulesOfProceduresState createState() => _RulesOfProceduresState();
}

class _RulesOfProceduresState extends State<RulesOfProcedures> {
  String _documentPath = 'asset/rulesPDF/full.pdf';
  String _docConduct = 'asset/rulesPDF/conduct.pdf';
  String _docDef = 'asset/rulesPDF/def.pdf';
  String _docPoints = 'asset/rulesPDF/points.pdf';
  String _docProcedure = 'asset/rulesPDF/procedure.pdf';
  String _docCrisis = 'asset/rulesPDF/procedure_crisis.pdf';
  String _docReso = 'asset/rulesPDF/resolution.pdf';
  String _docUnsc = 'asset/rulesPDF/unsc.pdf';
  String _docVoting = 'asset/rulesPDF/voting.pdf';

  Future<String> pdfFull() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_documentPath);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_documentPath';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfConduct() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_docConduct);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docConduct';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfDef() async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_docDef);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docDef';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfPoints() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_docPoints);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docPoints';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfProcedure() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_docProcedure);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docProcedure';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfCrisis() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_docCrisis);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docCrisis';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfReso() async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_docReso);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docReso';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfUnsc() async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_docUnsc);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docUnsc';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  Future<String> pdfVot() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_docVoting);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docVoting';

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
          ListView(
            children: <Widget>[
              Text(
                "Rules of",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              Text(
                "Procedure",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height / 100),
                child: GestureDetector(
                  onTap: () => pdfFull().then((path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  }),
                  child: Image.asset(
                    "asset/rulesOP/rules_full.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 100),
                    child: GestureDetector(

                      onTap: () => pdfDef().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset(
                        "asset/rulesOP/rules_definitions.png",
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2.2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 50),
                    child: GestureDetector(
                      onTap: () => pdfConduct().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset("asset/rulesOP/rules_conduct.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 100),
                    child: GestureDetector(
                      onTap: () => pdfPoints().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset("asset/rulesOP/rules_points.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.2),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 50),
                    child: GestureDetector(
                      onTap: () => pdfProcedure().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset("asset/rulesOP/rules_regular.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 100),
                    child: GestureDetector(
                      onTap: () => pdfCrisis().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset("asset/rulesOP/rules_crisis.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.2),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 50),
                    child: GestureDetector(
                      onTap: () => pdfUnsc().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset("asset/rulesOP/rules_unsc.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 100),
                    child: GestureDetector(
                      onTap: () => pdfVot().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset("asset/rulesOP/rules_voting.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.2),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 50),
                    child: GestureDetector(
                      onTap: () => pdfReso().then((path) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPdfViewerScreen(path)),
                        );
                      }),
                      child: Image.asset("asset/rulesOP/rules_reso.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.2),
                    ),

                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/20),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/20),
            ],
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
