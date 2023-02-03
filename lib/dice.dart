import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        title: 'dice app',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Dice'),
            centerTitle: true,
          ),
          body: const Center(
            child: Text('dice game page'),
          ),
        ));
  }
}
