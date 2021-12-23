import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({Key? key}) : super(key: key);

  Widget titleMobile() {
    if (Platform.isAndroid) {
      return const Text('Android User');
    }
    return const Text('IOS User');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kIsWeb ? const Text('WEB User') : titleMobile(),
      ),
    );
  }
}
