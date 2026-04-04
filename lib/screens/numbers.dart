import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers", style: TextStyle(color: Color(0xfff2f0ef))),
        backgroundColor: Color(0xff533d35),
      ),
      body: const Center(
        child: Text('Numbers Screen'),
      ),
    );
  }
}
