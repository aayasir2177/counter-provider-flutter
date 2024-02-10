import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreen();
}

class _CountScreen extends State<CountScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Count Screen"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Count:',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ));
  }
}
