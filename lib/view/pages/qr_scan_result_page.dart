import 'package:flutter/material.dart';

class QrScanResultPage extends StatelessWidget {
  final String qrCode;

  QrScanResultPage({this.qrCode=''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Результат сканирования'),
      ),
      body: Center(
        child: Text(qrCode),
      ),
    );
  }
}
