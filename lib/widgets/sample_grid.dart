import 'package:flutter/material.dart';

class SampleGrid extends StatelessWidget {
  SampleGrid({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Grid View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.purple[colorCodes[index]],
            );
          },
          itemCount: colorCodes.length,
        ),
        // GridView.count(
        //   crossAxisCount: 3,
        //   mainAxisSpacing: 4,
        //   crossAxisSpacing: 4,
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.grey,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.grey,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.grey,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
