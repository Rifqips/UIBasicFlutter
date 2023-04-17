import 'package:flutter/material.dart';

class SampleStack extends StatelessWidget {
  const SampleStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('belajar stack'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 230,
              width: 230,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 0,
            left: 100,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
