import 'package:flutter/material.dart';

class SecondSub1 extends StatefulWidget {
  const SecondSub1({super.key});

  @override
  State<SecondSub1> createState() => _SecondSub1State();
}

class _SecondSub1State extends State<SecondSub1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Press Here"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
