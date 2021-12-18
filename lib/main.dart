import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layout_media_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const ShowImages());
}

class ShowImages extends StatelessWidget {
  const ShowImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayoutMediaScreen(),
    );
  }
}
