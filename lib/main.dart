import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random randomNum = Random();
  int numState = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Magic 8 Ball',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueGrey,
          elevation: 4,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      numState = randomNum.nextInt(5) + 1;
                    });
                  },
                  child: Image.asset("images/ball$numState.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
