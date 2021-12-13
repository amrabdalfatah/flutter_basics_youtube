import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // final listImages = const [
  //   'assets/pic1.jpg',
  //   'assets/pic2.jpg',
  //   'assets/pic3.jpg',
  //   'assets/pic4.jpg',
  //   'assets/pic5.jpg',
  //   'assets/pic1.jpg',
  //   'assets/pic2.jpg',
  //   'assets/pic3.jpg',
  //   'assets/pic4.jpg',
  //   'assets/pic5.jpg',
  //   'assets/pic1.jpg',
  //   'assets/pic2.jpg',
  //   'assets/pic3.jpg',
  //   'assets/pic4.jpg',
  //   'assets/pic5.jpg',
  //   'assets/pic1.jpg',
  //   'assets/pic2.jpg',
  //   'assets/pic3.jpg',
  //   'assets/pic4.jpg',
  //   'assets/pic5.jpg',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Images'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Card(
              elevation: 20,
              shape: const CircleBorder(
                side: BorderSide(
                  color: Colors.green,
                  width: 5,
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'assets/pic3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Card(
              shadowColor: Colors.black,
              elevation: 30,
              color: Colors.green,
              margin: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/pic2.jpg',
                ),
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(16),
            child: ListTile(
              leading: Icon(
                Icons.email,
              ),
              title: Text(
                'Email',
              ),
              subtitle: Text('amr.abdalfatah.mohamed@gmail.com'),
              trailing: Icon(Icons.send),
            ),
          ),
        ],
      ),
    );
  }
}
