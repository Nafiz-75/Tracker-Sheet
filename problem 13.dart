import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom AppBar'),
          leading: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
          ), // Ensure logo is in assets
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: Center(child: Text('Home Screen')),
      ),
    );
  }
}
