import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final heightScreen = constraints.maxHeight;
          final widthScreen = constraints.maxWidth;
          return Column(
            children: [
              Container(
                height: heightScreen * 0.33,
                width: widthScreen,
                color: Colors.red,
              ),
              Container(
                height: heightScreen * 0.33,
                width: widthScreen,
                color: Colors.white,
              ),
              Container(
                height: heightScreen * 0.34,
                width: widthScreen,
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }
}
