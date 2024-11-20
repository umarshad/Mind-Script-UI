import 'package:flutter/material.dart';

class Podcast extends StatelessWidget {
  const Podcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Podcast")),
      body: const Center(
        child: Text("Welcome to the Podcast Screen!"),
      ),
    );
  }
}
