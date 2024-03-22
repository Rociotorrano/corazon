import 'package:flutter/material.dart';
import 'package:flutter_application_1/corazon.dart';

void main() {
  runApp(const DecirPage());
}

class DecirPage extends StatelessWidget {
  const DecirPage({Key? key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => const HeartPage()),
            );
          },
          child: const Text(
            "Solo quiero decirte que",
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}
