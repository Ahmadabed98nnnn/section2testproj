import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Array Text Example',
      home: ArrayTextScreen(),
    );
  }
}

class ArrayTextScreen extends StatefulWidget {
  @override
  _ArrayTextScreenState createState() => _ArrayTextScreenState();
}

class _ArrayTextScreenState extends State<ArrayTextScreen> {
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  int currentIndex = 0;

  void _showNextItem() {
    setState(() {
      currentIndex = (currentIndex + 1) % items.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array Text Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              items[currentIndex],
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showNextItem,
              child: Text('Next Item'),
            ),
          ],
        ),
      ),
    );
  }
}
