import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setmgnt_multi_provider/provider/multi_provider.dart';
import 'package:statemgnt_with_provider/home_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Root of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider[
      create: (_) => CountProvider(),
      crate:(_)=> MultiOneProvider(),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Set State without Provider State',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const MyHome(),
      ),
    );
  }
}
