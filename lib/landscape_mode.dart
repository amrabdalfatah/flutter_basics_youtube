import 'package:flutter/material.dart';

class LandScapeMode extends StatelessWidget {
  const LandScapeMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? ListView.builder(
                  itemCount: 40,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.add),
                      title: Text('Item $index'),
                    );
                  },
                )
              : GridView.builder(
                  itemCount: 40,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 4,
                  ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.add),
                      title: Text('Item $index'),
                    );
                  },
                );
        },
      ),
    );
  }
}
