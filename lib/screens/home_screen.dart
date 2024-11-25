import 'package:fl_repaso/components/FloatingActionCustomButton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
                  child:
                      Text('$contador', style: const TextStyle(fontSize: 30)))),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Floatingactioncustombutton(
                    onPressed: reducirContador, text: "-"),
                Floatingactioncustombutton(
                    onPressed: igualarContador, text: "0"),
                Floatingactioncustombutton(
                    onPressed: aumentarContador, text: "+"),
              ],
            ),
          )
        ],
      ),
    );
  }

  void aumentarContador() {
    setState(() {
      contador++;
    });
  }

  void igualarContador() {
    setState(() {
      contador = 0;
    });
  }

  void reducirContador() {
    setState(() {
      contador--;
    });
  }
}
