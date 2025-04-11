import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Swipeable List')),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(index.toString()),
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete, color: Colors.white),
              ),
              secondaryBackground: Container(
                color: Colors.blue,
                child: Icon(Icons.edit, color: Colors.white),
              ),
              child: ListTile(title: Text('Item ${index + 1}')),
              onDismissed: (direction) {
                // Handle the dismissal
              },
            );
          },
        ),
      ),
    );
  }
}
