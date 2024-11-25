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
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      contador--;
                    });
                  },
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: const Text("-", style: TextStyle(fontSize: 20)),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      contador = 0;
                    });
                  },
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: const Text("0", style: TextStyle(fontSize: 20)),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      contador++;
                    });
                  },
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: const Text("+", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
