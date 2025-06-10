import 'package:flutter/material.dart';
import 'tween_animation_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tween Animation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TweenAnimationScreen(),
    );
  }
}
