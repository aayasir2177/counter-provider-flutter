import 'package:counter_using_provider_flutter/count.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Counter Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Use Counter Buttons Here!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: const Icon(Icons.add))),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Icon(Icons.remove)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CountScreen()));
                      },
                      label: const Text("View Count"),
                      icon: const Icon(Icons.turn_right),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
