import 'package:flutter/material.dart';

class SampleCardView extends StatelessWidget {
  const SampleCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Card Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Indonesia Raya'),
                  subtitle: Text('Kumpulan Lagu Indonesia'),
                ),
                const Divider(
                  height: 2,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Pinjam'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Beli'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
