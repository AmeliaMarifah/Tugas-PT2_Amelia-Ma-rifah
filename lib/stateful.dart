import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Aplikasi Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Nilai Counter', style: TextStyle(fontSize: 20),
            ),

            Text('$_counter', style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // tambah
                ElevatedButton(
                  onPressed: () => setState(() => _counter++),
                  child: const Text('Tambah'),
                ),
                // kurang
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => setState(() => _counter--),
                  child: const Text('Kurang'),
                ),
                // reset
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => setState(() => _counter = 0),
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}