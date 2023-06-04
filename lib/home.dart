import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_reminder/MyTapCard.dart';

import 'counter_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final providerCounter = Provider.of<CounterProvider>(context);

    return Scaffold(
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
                    "state",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    providerCounter.counterSum.toString(),
                    style: const TextStyle(fontSize: 30.0),
                  )
                ],
              )),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                providerCounter.reset();
              },
              child: const Text("RESET"),
            ),
          ),
          Expanded(
            child: GridView.count(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: const EdgeInsets.all(5.0),
              mainAxisSpacing: 2.0,
              children: List<Widget>.generate(
                providerCounter.counters.length,
                (index) => ChildCard(
                  index,
                  providerCounter.counters[index].toString(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
