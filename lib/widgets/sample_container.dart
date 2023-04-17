import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('belajar kontainer'),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 5,
              color: Colors.black26,
            )),
        child: const Text(
          'ini kontainer',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 28,
            fontWeight: FontWeight.w300,
            wordSpacing: 10,
            letterSpacing: 10,
          ),
        ),
      ),
    );
  }
}
