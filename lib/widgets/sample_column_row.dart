import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('belajar kontainer'),
      ),
      body: 
      
      // Row(
      //   children: const <Widget>[
      //     Expanded(
      //       child: Text('Deliver features faster', textAlign: TextAlign.center),
      //     ),
      //     Expanded(
      //       child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
      //     ),
      //     Expanded(
      //       child: FittedBox(
      //         child: FlutterLogo(),
      //       ),
      //     ),
      //   ],
      // ),

      // Column(
      //   children: const <Widget>[
      //     Text('Deliver features faster'),
      //     Text('Craft beautiful UIs'),
      //     Expanded(
      //       child: FittedBox(
      //         child: FlutterLogo(),
      //       ),
      //     ),
      //   ],
      // ),

       Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    color: Colors.black54,
                  ),
                  const SizedBox(width: 16,),
                  Container(
                    width: 50,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 16,),
                  Container(
                    width: 50,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.red,
            ),
            Container(
              height: 50,
              color: Colors.green,
            ),
            Container(
              height: 50,
              color: Colors.grey,
            ),
          ],
        ),
    );
  }
}
