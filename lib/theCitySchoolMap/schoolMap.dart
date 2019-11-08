import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

class SchoolMap extends StatefulWidget {
  @override
  _SchoolMapState createState() => _SchoolMapState();
}

class _SchoolMapState extends State<SchoolMap> {
  String _docDef="asset/theCity/ground.pdf";
  String _docDef1="asset/theCity/1st.pdf";
  String _docDef2="asset/theCity/2nd.pdf";
  Future<String> pdfDef() async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_docDef);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docDef';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }
  Future<String> pdfDef1() async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_docDef1);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docDef1';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }
  Future<String> pdfDef2() async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(_docDef2);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_docDef2';

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
                      fontFamily: "MontSerrat",
                      letterSpacing: 0),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                GestureDetector(
                  onTap: () => pdfDef().then((path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  }),
                  child: Image.asset("asset/theCity/theCity_ground.png",
                      height: MediaQuery.of(context).size.height / 6,
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width / 1.2),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                GestureDetector(
                  onTap: () => pdfDef1().then((path) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewerScreen(path)),
                    );
                  }),
                  child: Image.asset(
                    "asset/theCity/theCity_1st.png",
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 1.2,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                GestureDetector(
                  onTap: () => pdfDef2().then((path) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => FullPdfViewerScreen(path)),
    );
    }),
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
