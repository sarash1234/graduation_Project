import 'package:flutter/material.dart';
import 'package:graduation/features/lets_get_started.dart';

void main() {
  runApp(const NeuroGuardApp());
}

class NeuroGuardApp extends StatelessWidget {
  const NeuroGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LetsGetStartedView(),
    );
  }
}
