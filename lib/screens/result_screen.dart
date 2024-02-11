import 'package:counter_using_provider_flutter/providers/count_provider.dart';
import 'package:counter_using_provider_flutter/providers/text_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _CountScreen();
}

class _CountScreen extends State<ResultScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("States"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Count:',
                  style: TextStyle(fontSize: 24),
                ),
                Consumer<CountProvider>(builder: (context, value, child) {
                  return Text(
                    value.count.toString(),
                    style: const TextStyle(fontSize: 24),
                  );
                }),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Text:',
                  style: TextStyle(fontSize: 24),
                ),
                Consumer<TextProvider>(builder: (context, value, child) {
                  return Text(
                    value.text,
                    style: const TextStyle(fontSize: 18),
                  );
                })
              ],
            ),
          ),
        ));
  }
}
