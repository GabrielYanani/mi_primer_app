import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'hola',
      home: MyHomePage(title: 'hola a todos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      (_counter++);
    });
  }

  void _restar() {
    setState(() {
      (_counter--);
    });
  }

  void _multiplicar() {
    setState(() {
      (_counter = _counter * _counter);
    });
  }

  void _sumarx2() {
    setState(() {
      (_counter = _counter + _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'APRETA EL BOTON:',
              textScaleFactor: 2,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.button,
              textScaleFactor: 2,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.red,
              mini: false,
              onPressed: _incrementCounter,
              tooltip: 'sumar',
              child: const Icon(
                Icons.add,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              mini: false,
              onPressed: _restar,
              tooltip: 'restar',
              child: const Icon(
                Icons.remove,
              ),
            ),
            FloatingActionButton(
              mini: false,
              onPressed: _multiplicar,
              tooltip: 'multiplicar',
              child: const Icon(
                Icons.superscript,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.pink,
              mini: false,
              onPressed: _sumarx2,
              tooltip: 'multiplicar',
              child: const Icon(
                Icons.superscript,
              ),
            )
          ],
        ),
      ),
    );
  }
}
