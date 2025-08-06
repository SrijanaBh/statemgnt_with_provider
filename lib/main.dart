import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemgnt_with_provider/provider/count_provider.dart';
import 'package:statemgnt_with_provider/screens/count_example.dart';

void main() {
  runApp(const MyApp());
}

/// Root of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Set State without Provider State',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const CountExample(),
      ),
    );
  }
}
