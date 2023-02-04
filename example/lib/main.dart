import 'package:flutter/material.dart';
import 'package:number_pad/widgets/numPad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String number = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NumPad Example',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                NumPad(
                  arabicDigits: true,
                  onType: (value) {
                    number += value;
                    setState(() {});
                  },
                  rightWidget: IconButton(
                    icon: const Icon(Icons.backspace),
                    onPressed: () {
                      if (number.isNotEmpty) {
                        number = number.substring(0, number.length - 1);
                        setState(() {});
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
