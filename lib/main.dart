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
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(child: Icon(Icons.alarm)),
    );
  }
}
