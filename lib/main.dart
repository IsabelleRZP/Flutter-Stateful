import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double red = 0;
  double green = 0;
  double _counter = 50;

  void _incrementSize() {
    setState(() {
      if (_counter >= 50 && _counter <= 500) {
        _counter += 50;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {},
            icon: const Text('S'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Text('M'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Text('L'),
          ),
          IconButton(
            onPressed: _incrementSize,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.alarm,
              size: 300,
              color: Color.fromRGBO(red.toInt(), 0, 0, 1),
            ),
          ),
          Slider(
            activeColor: Colors.red,
            min: 0,
            max: 255,
            value: red,
            onChanged: (double value) {
              setState(() {
                red = value;
              });
            },
          ),
          Slider(
            activeColor: Colors.green,
            min: 0,
            max: 255,
            value: green,
            onChanged: (double value) {
              setState(() {
                green = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
