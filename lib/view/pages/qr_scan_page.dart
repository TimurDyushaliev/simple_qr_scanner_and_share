import 'package:flutter/material.dart';
import 'package:qr_code/view/pages/qr_scan_result_page.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanPage extends StatefulWidget {
  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  final GlobalKey qrKey = GlobalKey();
  QRViewController qrViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QRView(
          key: qrKey,
          onQRViewCreated: (QRViewController qrViewController) {
            this.qrViewController = qrViewController;
            qrViewController.scannedDataStream.listen((qrData) {
              final String qrCode = qrData.code;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QrScanResultPage(
                            qrCode: '$qrCode',
                          )));
            });
          }),
    );
  }
}
