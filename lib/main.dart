import 'package:flutter/material.dart';
import 'profile_screen.dart';

void main() {
  runApp(const ShowImages());
}

class ShowImages extends StatelessWidget {
  const ShowImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen(),
    );
  }
}
