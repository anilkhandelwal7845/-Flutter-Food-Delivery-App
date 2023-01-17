import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:bottomnavigation/login_screen.dart';
import 'package:bottomnavigation/phone_numberscreen.dart';

import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override


  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PhonenumberScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
                height: 500,
                width: 500,
                child: Center(
                    child: Image(image: AssetImage('assets/delivery .gif')))),

            // Text("WELCOME" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),)
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText("WELCOME",
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 35)),
            ]),
          ],
        ),
      ),
    );
  }
}
