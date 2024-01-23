import 'package:flutter/material.dart';

class Connectscreen extends StatefulWidget {
  const Connectscreen({super.key});

  @override
  State<Connectscreen> createState() => _ConnectscreenState();
}

class _ConnectscreenState extends State<Connectscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Check'))
          ],
        ),
      ),
    );
  }
}
