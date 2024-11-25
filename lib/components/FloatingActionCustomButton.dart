import 'package:flutter/material.dart';

class Floatingactioncustombutton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const Floatingactioncustombutton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {onPressed();},
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      child: Text(text, style: const TextStyle(fontSize: 20)),
    );
  }
}
