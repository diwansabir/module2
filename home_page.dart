import 'package:android/module2/ques5.dart';
import 'package:android/module2/ques7.dart';
import 'package:android/module2/ques8.dart';
import 'package:android/module2/ques9.dart';

import 'package:android/module2/quest6.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question5(),
                      ));
                }),
                child: Text(
                  "Question 5",
                  style: TextStyle(fontSize: 22),
                )),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question6(),
                      ));
                }),
                child: Text(
                  "Question 6",
                  style: TextStyle(fontSize: 22),
                )),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question7(),
                      ));
                }),
                child: Text(
                  "Question 7",
                  style: TextStyle(fontSize: 22),
                )),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question8(),
                      ));
                }),
                child: Text(
                  "Question 8",
                  style: TextStyle(fontSize: 22),
                )),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question9(),
                      ));
                }),
                child: Text(
                  "Question 9",
                  style: TextStyle(fontSize: 22),
                )),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}