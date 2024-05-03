import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var diceRight = 1;
  var diceLeft = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dice App',
            style: TextStyle(
              fontFamily: 'San Francisco',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 255, 97, 97),
                  Color.fromARGB(255, 166, 95, 95),
                ]
              )
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 255, 97, 97),
                    Color.fromARGB(255, 166, 95, 95),
                    Color.fromARGB(255, 255, 97, 97),
                  ]
                )
              ),
              child: GestureDetector(
                onTap: (){
                  buttonClicked();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/dice$diceRight.png'),
                    Image.asset('images/dice$diceLeft.png')
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }

  void buttonClicked(){
    setState(() {
      diceRight = Random().nextInt(6) + 1;
      diceLeft = Random().nextInt(6) + 1;
    });
  }
}
