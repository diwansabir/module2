//8. Write a program to show four images around Textview
import 'dart:collection';

import 'package:flutter/material.dart';

class Question8 extends StatefulWidget {
  const Question8({super.key});

  @override
  State<Question8> createState() => _Question8State();
}

class _Question8State extends State<Question8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 196,
          width: double.maxFinite,
          child: Row(children: [
            Container(
              child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"),
            ),
            Container(
              child: Image.network(
                  "https://img.fruugo.com/product/0/35/178584350_max.jpg"),
            )
          ]),
        ),
        Container(
          height: 30,
          alignment: Alignment.center,
          child: Text(
            "IMAGES",
            style: TextStyle(fontSize: 30, color: Colors.red.shade800),
          ),
        ),
        Container(
          height: 195,
          child: Row(children: [
            Container(
              child: Image.network(
                  "https://www.giantbomb.com/a/uploads/scale_medium/0/6087/2437349-pikachu.png"),
            ),
            Container(
              child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/004/226/762/original/panda-cartoon-cute-say-hello-panda-animals-illustration-vector.jpg"),
            ),
          ]),
        ),
      ]),
    );
  }
}