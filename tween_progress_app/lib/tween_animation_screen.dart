import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({Key? key}) : super(key: key);

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tween Animation")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: _progress),
              duration: const Duration(milliseconds: 500),
              builder: (context, double value, child) {
                return CircularProgressIndicator(
                  value: value,
                  strokeWidth: 8,
                  backgroundColor: Colors.grey[300],
                  color: Colors.blue,
                );
              },
            ),
            const SizedBox(height: 40),
            Text("Progress: ${(_progress * 100).toStringAsFixed(0)}%"),
            Slider(
              value: _progress,
              min: 0.0,
              max: 1.0,
              onChanged: (value) {
                setState(() {
                  _progress = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
