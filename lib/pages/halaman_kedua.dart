import 'dart:math';
import 'package:flutter/material.dart';

class HalamanKedua extends StatefulWidget {
  const HalamanKedua({super.key});

  @override
  State<HalamanKedua> createState() => _HalamanKeduaState();
}

class _HalamanKeduaState extends State<HalamanKedua> {
  late DateTime selectedDate;
  late TimeOfDay selectedTime;

  void _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2045));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _selectedTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  void initState() {
    selectedDate = DateTime.now();
    selectedTime = const TimeOfDay(hour: 20, minute: 21);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Dua & Kalender'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                _selectedDate(context);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Select Date'),
                  Text(selectedDate.toIso8601String()),
                ],
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                _selectedTime(context);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Select Time'),
                  Text('${selectedTime.hour} : ${selectedTime.minute}'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                // ada on double tap dan tidak ada kedipan sedikit
                onTap: () {
                  print('pertama');
                },
                child: Text('Klik sekali'),
              ),
              InkWell(
                // ada on double tap dan ada kedipan sedikit
                onTap: () {
                  print('kedua');
                },
                child: const Text('Klik sekali'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
