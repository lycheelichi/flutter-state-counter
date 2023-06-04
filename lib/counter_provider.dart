import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  List<Map<String, dynamic>> counters = [
    {"id": 1, "name": "Child 1", "counter": 0},
    {"id": 2, "name": "Child 2", "counter": 0},
    {"id": 3, "name": "Child 3", "counter": 0},
    {"id": 4, "name": "Child 4", "counter": 0},
    {"id": 5, "name": "Child 5", "counter": 0},
  ];

  int counterSum = 0;

  CounterProvider() {
    counterSum = getSum();
    notifyListeners();
  }

  int getSum() {
    double sum = 0;
    for (var count in counters) {
      sum += count['counter'];
    }
    return sum.round();
  }

  void increment(index) {
    counters[index]['counter']++;
    counterSum = getSum();
    notifyListeners();
  }

  void decrement(index) {
    counters[index]['counter']--;
    counterSum = getSum();
    notifyListeners();
  }

  void reset() {
    for (var count in counters) {
      count['counter'] = 0;
    }
    counterSum = getSum();
    notifyListeners();
  }
}
