import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 72,
        elevation: 0,
        title: const Text(
          'List of Widgets',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
      ),
      body: const Center(),
    );
  }
}
