import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uuid/uuid.dart';

import '../../commons/background.dart';

class ConnectionSettingsScreen extends StatefulWidget {
  const ConnectionSettingsScreen({super.key});

  @override
  State<ConnectionSettingsScreen> createState() =>
      _ConnectionSettingsScreenState();
}

class _ConnectionSettingsScreenState extends State<ConnectionSettingsScreen> {
  String? _data;

  @override
  void initState() {
    super.initState();
    int timeStamp = DateTime.now().millisecondsSinceEpoch;
    String randomString = const Uuid().toString().substring(0, 8);
    _data = timeStamp.toString() + randomString;
    print("Test${_data!}");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Center(
              child: Container(
                width: 280,
                height: 220,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    QrImage(
                      data: "1234",
                      backgroundColor: Theme.of(context).primaryColor,
                      size: 145,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0),
                      child: Text(
                        "다른 스마트폰으로 ['원격 디바이스' > 'Monitor']\n실행한 뒤 위 QR코드를 인식 시켜주세요.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
