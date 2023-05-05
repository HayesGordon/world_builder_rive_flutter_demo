import 'package:flutter/material.dart';

import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      showPerformanceOverlay: true,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Wrap(
            children: [
              ...List.generate(4, (_) {
                return const SizedBox(
                  width: 200,
                  height: 200,
                  child: RiveAnimation.asset(
                    'assets/world_creator.riv',
                    artboard: 'Mountains', // 'Threes, 'Buildings'
                    stateMachines: ['SmTree'],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
