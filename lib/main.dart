import 'package:flutter/material.dart';

import 'package:flutter_application_1/decir.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class Heart extends StatelessWidget {
  final Offset position;
  final double size;
  final Color color;

  const Heart(this.position, this.size, this.color, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      top: position.dy - size / 2,
      left: position.dx - size / 2,
      child: Icon(
        Icons.favorite,
        size: size,
        color: color,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text(''),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DecirPage()),
            );
          },
          child: const Text(
            "Presione aqui",
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}
