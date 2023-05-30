import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTapCard extends StatefulWidget {
  MyTapCard(void Function(int childCount) this.incrementCounter, void Function(int childCount) this.decrementCounter, {Key? key})
      : super(key: key);
  Function(int) incrementCounter;
  Function(int) decrementCounter;

  @override
  State<MyTapCard> createState() => _MyTapCardState();
}

class _MyTapCardState extends State<MyTapCard> {
  int _counter = 0;

  void countIncrement() {
    _counter++;
    widget.incrementCounter(1);
  }

  void countDecrement() {
    _counter= _counter -1;
    widget.decrementCounter(1);
  }

  void clearChildCount() {
    _counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text(
              'Click Me',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 50.0,
                  onPressed: () {
                    setState(()=>{
                      countIncrement()
                    });
                  },
                  icon: const Icon(Icons.add_circle),
                ),
                IconButton(
                  iconSize: 50.0,
                  onPressed: () {
                    setState(()=>{
                      countDecrement()
                    });
                  },
                  icon: const Icon(Icons.remove_circle),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
