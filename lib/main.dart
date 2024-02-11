import 'package:counter_using_provider_flutter/providers/count_provider.dart';
import 'package:counter_using_provider_flutter/providers/text_provider.dart';
import 'package:counter_using_provider_flutter/screens/home_screen.dart';
// ignore: unused_import
import 'package:counter_using_provider_flutter/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => CountProvider(),
    ),
    ChangeNotifierProvider(create: (context) => TextProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
