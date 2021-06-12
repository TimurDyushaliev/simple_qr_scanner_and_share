import 'package:flutter/material.dart';
import 'package:share/share.dart';

class QrScanResultPage extends StatelessWidget {
  final String qrCode;

  QrScanResultPage({this.qrCode = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Результат сканирования'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Share.share(qrCode);
          },
          child: Text(qrCode,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline)),
        ),
      ),
    );
  }
}
