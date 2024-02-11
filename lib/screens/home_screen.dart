import 'package:counter_using_provider_flutter/providers/count_provider.dart';
import 'package:counter_using_provider_flutter/providers/text_provider.dart';
import 'package:counter_using_provider_flutter/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("State Manager"),
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
                  'Increment / Decrement:',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: Consumer<CountProvider>(
                    builder: (context, value, child) {
                      return ElevatedButton(
                          onPressed: () {
                            value.increment();
                          },
                          child: const Icon(Icons.add));
                    },
                  )),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(child: Consumer<CountProvider>(
                    builder: (context, value, child) {
                      return ElevatedButton(
                          onPressed: () {
                            value.decrement();
                          },
                          child: const Icon(Icons.remove));
                    },
                  )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Edit Text:',
                style: TextStyle(fontSize: 24),
              ),
              Consumer<TextProvider>(builder: (context, value, child) {
                return TextField(
                  onSubmitted: (text) {
                    value.setText(text);
                  },
                );
              }),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResultScreen()));
                      },
                      label: const Text("View State"),
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
