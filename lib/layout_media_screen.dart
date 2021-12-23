import 'package:flutter/material.dart';

class LayoutMediaScreen extends StatelessWidget {
  const LayoutMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // 772
    // final screenWidth = MediaQuery.of(context).size.width; // 360
    final appBar = AppBar(
      title: const Text('Hello'),
    );
    // print(appBar.preferredSize.height); // 56
    final bodyHeight = screenHeight -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            height: bodyHeight * 0.33,
            color: Colors.red,
          ),
          Container(
            height: bodyHeight * 0.33,
            color: Colors.white,
          ),
          Container(
            height: bodyHeight * 0.34,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
