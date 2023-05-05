import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      showPerformanceOverlay: true,
      home: Scaffold(
        body: Center(
          child: RiveAnimation.asset(
            'assets/world_creator.riv',
            fit: BoxFit.contain,
            artboard: 'Demo',
            stateMachines: ['State Machine 1'],
          ),
        ),
      ),
    );
  }
}
