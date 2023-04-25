import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 2',
      home: Question2(),
    );
  }
}

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  dynamic result;
  List abc = [];
  final _textControllerOne = TextEditingController();
  final _textControllerTwo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              TextFormField(
                controller: _textControllerOne,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter First Number..",
                    border: const OutlineInputBorder(),
                    prefix: IconButton(
                        onPressed: () {
                          _textControllerOne.clear();
                        },
                        icon: const Icon(Icons.clear))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _textControllerTwo,
                  decoration: InputDecoration(
                      hintText: "Enter Second Number..",
                      border: const OutlineInputBorder(),

                      suffixIcon: IconButton(
                          onPressed: () {
                            _textControllerTwo.clear();
                          },
                          icon: const Icon(Icons.clear))),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        int a = int.parse(_textControllerOne.text.toString());
                        int b = int.parse(_textControllerTwo.text.toString());
                        abc = [];
                        if (a > b) {
                          for (int i = a; i > b; i--) {
                            if (i != a) {
                              abc.add(i);
                            }
                          }
                          result = abc
                              .toString()
                              .replaceAll(']', '')
                              .replaceAll('[', '');
                        } else {
                          for (int i = a; i < b; i++) {
                            if (i != a) {
                              abc.add(i);
                            }
                          }
                          result = abc
                              .toString()
                              .replaceAll('[', '')
                              .replaceAll(']', '');
                        }
                      });
                    },
                    child: const Text(
                      "View",
                      style: TextStyle(),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _textControllerOne.clear();
                        _textControllerTwo.clear();

                        abc = [];
                      });
                    },
                    child: const Text("Clear")),
              ),
              abc.isNotEmpty
                  ? Container(
                margin: const EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(20),
                height: 200,
                color: Colors.grey,
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      "$result",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              )
                  : const SizedBox()
            ],
          ),
        ));
  }
}