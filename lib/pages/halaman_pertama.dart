import 'package:flutter/material.dart';

class HalamanPertama extends StatefulWidget {
  const HalamanPertama({super.key});

  @override
  State<HalamanPertama> createState() => _HalamanPertamaState();
}

class _HalamanPertamaState extends State<HalamanPertama> {
  var selected = 'Satu';
  final dropdownList = <String>[
    'Satu',
    'Dua',
    'Tiga',
    'Empat',
  ];

  var isChecked = false;
  var sex = 'male';
  var isOn = false;
  final _globalkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Satu & Form'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: _globalkey,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tolong Di Isi Dulu';
                  }
                  return null;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _globalkey.currentState!.validate();
              // Navigator.pushNamed(context, '/second');
            },
            child: const Text('halaman satu'),
          ),
          Switch(
              value: isOn,
              onChanged: (bool? val) {
                if (val != null) {
                  setState(() {
                    isOn = val;
                  });
                }
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: 'male',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) {
                        sex = val;
                      }
                    });
                  }),
              const Text('Male')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: 'female',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) {
                        sex = val;
                      }
                    });
                  }),
              const Text('Female')
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                activeColor: Colors.blue,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      isChecked = val;
                    }
                  });
                },
              ),
              const Text('Setuju')
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              value: selected,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 20,
              style: TextStyle(color: Colors.blue[600]),
              underline: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.blue,
                  width: 3,
                ))),
              ),
              items: dropdownList
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  if (val != null) selected = val;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
