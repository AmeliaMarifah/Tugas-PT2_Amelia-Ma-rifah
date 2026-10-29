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
      title: 'Tugas Stateless',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HalamanStateless(),
    );
  }
}

class HalamanStateless extends StatelessWidget {
  const HalamanStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Profil Mahasiswa'),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Kartu Mahasiswa',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          // Kartu mahasiswa pertama
          const KartuMahasiswa(
            nama: 'Amelia Marifah',
            nim: '3012410057',
            prodi: 'Informatika',
          ),

          // Kartu mahasiswa kedua
          const KartuMahasiswa(
            nama: 'Budi Santoso',
            nim: '3012410058',
            prodi: 'Informatika',
          ),

          // Kartu mahasiswa ketiga
          const KartuMahasiswa(
            nama: 'Siti Aminah',
            nim: '3012410059',
            prodi: 'Sistem Informasi',
          ),

          const SizedBox(height: 24),

          const Text(
            'Halaman Profil',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          // Foto dan identitas profil
          const Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amelia Marifah',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('NIM: 3012410057'),
                    Text('Prodi: Informatika'),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Baris ikon kontak di dalam Container
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.email, color: Colors.blue, size: 28),
                Icon(Icons.phone, color: Colors.blue, size: 28),
                Icon(Icons.location_on, color: Colors.blue, size: 28),
                Icon(Icons.person, color: Colors.blue, size: 28),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}

// Widget kartu mahasiswa
class KartuMahasiswa extends StatelessWidget {
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
    elevation: 3,
    margin: const EdgeInsets.only(bottom: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.school,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text('NIM: $nim'),
              Text('Prodi: $prodi'),
            ],
            ),
          ),
        ],
      ),
    ),
  );
}
}