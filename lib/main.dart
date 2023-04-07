import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('My Mood'),
          backgroundColor: Colors.black26,
        ),
        body: MyMoodPage(),
      ),
    );
  }
}

class MyMoodPage extends StatefulWidget {
  @override
  _MyMoodPageState createState() => _MyMoodPageState();
}

class _MyMoodPageState extends State<MyMoodPage> {
  String myCurrentMood = "4";

  void predictMyMood() {
    int random = Random().nextInt(5) + 1; // (0 - 4) + 1
    setState(() {
      myCurrentMood = "$random";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.8),
          child: Image.asset(
            'images/$myCurrentMood.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.5),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black26,
            ),
            child: Text('Predict My Mood'),
            onPressed: () {
              predictMyMood();
            },
          ),
        ),
      ],
    );
  }
}
