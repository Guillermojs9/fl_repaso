import 'package:flutter/material.dart';

class Floatingactioncustombutton extends StatelessWidget {
  const Floatingactioncustombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      child: const Text("Texto", style: TextStyle(fontSize: 20)),
    );
  }
}
