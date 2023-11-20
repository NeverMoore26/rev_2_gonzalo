import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text('This is an About Page'),
            SizedBox(height: 20),
            Text('Made by: Jeremy Arévalo'),
            SizedBox(height: 20),
            Text('Fisrt Partial PUCETEC'),
          ],
        ),
      ),
    );
  }
}
