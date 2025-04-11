import 'package:flutter/material.dart';

void main() => runApp(Task9());

class Task9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CardList());
  }
}

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => CustomCard(index),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final int index;
  CustomCard(this.index);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tapped = !tapped;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: tapped ? Colors.amber[200] : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(blurRadius: 6, color: Colors.black12)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/150'),
            Text(
              'Title ${widget.index + 1}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Subtitle here'),
            Text('Description of the card goes here.'),
          ],
        ),
      ),
    );
  }
}
