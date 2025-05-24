import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Counter value => $counter",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
