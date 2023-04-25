//6. create an application to display n edittext where n is number input by user
import 'package:flutter/material.dart';

class Question6 extends StatefulWidget {
  const Question6({super.key});

  @override
  State<Question6> createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  TextEditingController numbercontroller = TextEditingController();
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXTFORM FIELD")),
      body: Container(
        height: 200,
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 80, right: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: numbercontroller,
              decoration: const InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.greenAccent)),
                label: const Text("Enter Number N"),
                hintText: "Enter Number N",
              ),
            ),
          ],
        ),
      ),
    );
  }
}