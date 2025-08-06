import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemgnt_with_provider/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  Color fabColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, countProvider, child) {
            return Text(
              countProvider.count.toString(),
              style: const TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: fabColor,
        onPressed: () {
          final countProvider = Provider.of<CountProvider>(
            context,
            listen: false,
          );
          countProvider.setCount();
          setState(() {
            fabColor = fabColor == Colors.blue ? Colors.black : Colors.blue;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
