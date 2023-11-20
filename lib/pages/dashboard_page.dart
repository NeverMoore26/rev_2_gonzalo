import 'package:flutter/material.dart';

class DasboardPage extends StatelessWidget {
  const DasboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Page'),
        centerTitle: true,
      ),
      body: const Center(child: Text('You are in the Dashboard Page. Great!')),
    );
  }
}
