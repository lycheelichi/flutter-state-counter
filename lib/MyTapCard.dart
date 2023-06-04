import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_reminder/counter_provider.dart';

class ChildCard extends StatelessWidget {
  ChildCard(this.index, this.name, {Key? key}) : super(key: key);
  int index;
  String name;

  @override
  Widget build(BuildContext context) {
    final providerCounter = Provider.of<CounterProvider>(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              providerCounter.counters[index]['name'].toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              providerCounter.counters[index]['counter'].toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 50.0,
                  onPressed: () {
                    providerCounter.increment(index);
                  },
                  icon: const Icon(Icons.add_circle),
                ),
                IconButton(
                  iconSize: 50.0,
                  onPressed: () {
                    providerCounter.decrement(index);
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
