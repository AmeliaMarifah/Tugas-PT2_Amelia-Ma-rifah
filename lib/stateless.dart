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
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: Text("Profil Mahasiswa"),
          backgroundColor: Colors.blue.shade100,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Profil
                Row(
                  children: [
                    CircleAvatar(radius: 32,
                      // backgroundColor: Colors.blue.shade100,
                      // child: Icon(Icons.person),
                      backgroundImage: AssetImage('assets/images/foto_i.png'),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Amelia Marifah', style: TextStyle(fontSize: 20)),
                        Text('Informatika'),
                      ],
                    ),
                  ],
                ),
                // Icon
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.email),
                      Icon(Icons.phone),
                      Icon(Icons.message)
                    ],
                  ),
                ),
                const  SizedBox(height: 20),
                Text("Daftar kartu mahasiswa",
                  style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Kartu mahasiswa (3)
                const SizedBox(height: 12),
                const KartuMahasiswa(
                  nama: "Amelia Marifah",
                  nim: "3012410057",
                  prodi: "Informatika",
                ),

                const KartuMahasiswa(
                  nama: "Anisa Kurnia",
                  nim: "3012410059",
                  prodi: "Informatika",
                ),

                const KartuMahasiswa(
                  nama: "Maryam Butsainah",
                  nim: "3012410058",
                  prodi: "Informatika",
                ),
              ],
            )
        ),
      ),
    );
  }
}

// Widget kartu mahasiswa
class KartuMahasiswa extends StatelessWidget{
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(nama),
        subtitle: Text(
          "NIM: $nim\nProdi: $prodi",
        ),
      ),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}