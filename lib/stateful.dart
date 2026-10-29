import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Stateful',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HalamanCounter(),
    );
  }
}

class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

class _HalamanCounterState extends State<HalamanCounter> {
  int angka = 0;

  // Fungsi untuk menambah angka
  void tambah() {
    setState(() {
      angka++;
    });
  }

  // Fungsi untuk mengurangi angka
  void kurang() {
    setState(() {
      angka--;
    });
  }

  // Fungsi untuk mereset angka
  void reset() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Counter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Menampilkan angka counter
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '$angka',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Tombol tambah dan kurang
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: kurang,
                  icon: const Icon(Icons.remove),
                  label: const Text('Kurang'),
                ),

                const SizedBox(width: 16),

                ElevatedButton.icon(
                  onPressed: tambah,
                  icon: const Icon(Icons.add),
                  label: const Text('Tambah'),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Tombol reset
            ElevatedButton.icon(
              onPressed: reset,
              icon: const Icon(Icons.refresh),
              label: const Text('Reset'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}