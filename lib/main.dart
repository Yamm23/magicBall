import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBallApp());
}

class MagicBallApp extends StatelessWidget
{
  const MagicBallApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      home : FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget
{
  const FirstPage({Key? key}) : super(key:key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var ballno="1";
  Random random = new Random();
  int randomNo = 2;

  ballnumber() {
    randomNo = random.nextInt(5) + 1;
    ballno = randomNo.toString();
    print(ballno);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar
        (
        backgroundColor: Colors.red,
        title: Text('Magic 8 App'),
      ),
      backgroundColor: Colors.red,
      body:Center(
        child: Column(
            children:
            [
            Expanded(

            child: GestureDetector
            (
              onTap:()
              {
               setState(() {
                 ballnumber();
               });
              },
               child: Image.asset
            (
              'assets/ball$ballno.png',scale:2.5
          )))
    ]



        ),
      )

    );
  }
}









