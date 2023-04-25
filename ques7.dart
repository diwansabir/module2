//7. create an application to display Textview when checkbox is checked and hide otherwise
import 'package:flutter/material.dart';

class Question7 extends StatefulWidget {
  const Question7({super.key});

  @override
  State<Question7> createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  List<String> mylist = [];
  bool Android = false;
  bool java = false;
  bool Dart = false;
  bool Python = false;
  bool Flutter = false;
  String? result = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Android",style: TextStyle(fontSize: 20,)),
              Checkbox(
                  value: Android,
                  onChanged: ((value) {
                    setState(() {
                      Android = value!;
                      result = value.toString();
                    });
                    if (Android) {
                      mylist.add("Android");
                    } else {
                      mylist.remove("Android");
                    }
                  }))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("java",style: TextStyle(fontSize: 20,)),
              Checkbox(
                  value: java,
                  onChanged: ((value) {
                    setState(() {
                      java = value!;
                      result = value.toString();
                    });
                    if (java) {
                      mylist.add("java");
                    } else {
                      mylist.remove("java");
                    }
                  }))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dart",style: TextStyle(fontSize: 20,)),
              Checkbox(
                  value: Dart,
                  onChanged: ((value) {
                    setState(() {
                      Dart = value!;
                      result = value.toString();
                    });
                    if (Dart) {
                      mylist.add("Dart");
                    } else {
                      mylist.remove("Dart");
                    }
                  }))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("python",style: TextStyle(fontSize: 20,)),
              Checkbox(
                  value: Python,
                  onChanged: ((value) {
                    setState(() {
                      Python = value!;
                      result = value.toString();
                    });
                    if (Python) {
                      mylist.add("Python");
                    } else {
                      mylist.remove("Python");
                    }
                  }))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Flutter",style: TextStyle(fontSize: 20,),),
              Checkbox(
                  value: Flutter,
                  onChanged: ((value) {
                    setState(() {
                      Flutter = value!;
                      result = value.toString();
                    });
                    if (Flutter) {
                      mylist.add("Flutter");
                    } else {
                      mylist.remove("Flutter");
                    }
                  }))
            ],
          ),
          SizedBox(height: 20),
          Text('Result = $result ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ]),
      ),
    );
  }
}