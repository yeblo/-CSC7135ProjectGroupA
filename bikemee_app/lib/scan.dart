import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  GlobalKey qrKey = GlobalKey();
  var qrText ="";
  QRViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
                key: qrKey,
                overlay: QrScannerOverlayShape(
                  borderRadius: 10,
                  borderColor: Colors.red,
                  borderLength: 20,
                  borderWidth: 10,
                  cutOutSize: 300
                ),
                onQRViewCreated: _onQRViewCreate),
      ),
          Expanded(
              flex: 1,
            child: Center(
              child: Text('Scan result: $qrText'),

            ),


          )
        ],
      ),
    );
  }



  @override
  void dispose() {
    // TODO: implement dispose
    controller?.dispose();
    super.dispose();
  }





  void _onQRViewCreate(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
         qrText = scanData as String;
      });
    });
  }
}
