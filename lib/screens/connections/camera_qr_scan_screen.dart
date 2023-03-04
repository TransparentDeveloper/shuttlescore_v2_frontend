import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CameraQrScanScreen extends StatefulWidget {
  const CameraQrScanScreen({super.key});

  @override
  State<CameraQrScanScreen> createState() => _CameraQrScanScreenState();
}

class _CameraQrScanScreenState extends State<CameraQrScanScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? _controller;
  String _data = "";

  void onQRViewCreated(QRViewController controller) {
    _controller = controller;

    _controller!.scannedDataStream.listen((scanData) async {
      setState(() {
        _data = scanData.code.toString();
      });
      print(_data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          QRView(
            key: qrKey,
            cameraFacing: CameraFacing.back,
            onQRViewCreated: onQRViewCreated,
            formatsAllowed: const [
              BarcodeFormat.qrcode,
            ],
            overlay: QrScannerOverlayShape(
              borderColor: Theme.of(context).primaryColor,
              borderWidth: 10,
              borderLength: 100,
              cutOutSize: 180,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '박스 안에 QR코드를 인식 시켜주세요.',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          )
        ],
      ),
    );
  }
}
