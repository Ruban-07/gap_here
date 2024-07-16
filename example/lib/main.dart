import 'package:flutter/material.dart';
import 'package:gap_here/gap_here.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('GapHere Example'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                // Example of using GapHere widget to add vertical spacing
                const GapHere(20),
                // Added 20% vertical spacing of the screen height
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      );
}
