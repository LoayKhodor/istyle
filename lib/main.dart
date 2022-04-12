import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/surpriseScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomIndex=0;
  @override
  void initState() {
    Random rand = Random();
    randomIndex = rand.nextInt(compliments.length);
    // TODO: implement initState
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iStyle Surprise',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SurpriseScreen(cmp: compliments.elementAt(randomIndex),),
    );
  }
}

List<String> compliments = [
  'Your style is everything',
  'You are the most perfect you there is',
  'You should be proud of yourself',
  'On a scale from 1 to 10, you’re an 11',
  'You’re like sunshine on a rainy day',
  'That color is perfect on you',
  'You smell really good',
  'You’re better than a triple-scoop ice cream cone. With sprinkles',
  'Your hair looks stunning',
  'You’re one of a kind!',
  'You’re gorgeous — and that’s the least interesting thing about you, too',
  'You’re really something special',
  'You’re a gift to those around you',
];
