import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyTapCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counterSum = 0;

  void incrementCounter(int childCount) {
    setState(() {
      counterSum += childCount;
    });
  }

  void decrementCounter(int childCount) {
    setState(() {
      counterSum -= childCount;
    });
  }

  void resetCounter(){
    setState(()=>{
      counterSum = 0
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 140.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Flutter state",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    counterSum.toString(),
                    style: const TextStyle(fontSize: 30.0),
                  )
                ],
              )),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            padding: const EdgeInsets.all(5.0),
            mainAxisSpacing: 2.0,
            children: [
              MyTapCard(incrementCounter, decrementCounter),
              MyTapCard(incrementCounter, decrementCounter)
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                resetCounter();
              },
              child: const Text("RESET"),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Hello"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ("nihao")),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: "Wow")
        ],
      ),
    );
  }
}
