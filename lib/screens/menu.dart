import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';
import 'package:myportofolio_mobile/widgets/project_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  // Data pemilik portofolio
  final String npm = "2506657301";
  final String nama = "Rizky Dzaky";
  final String kelas = "PBP C";

  // Daftar tombol menu portofolio
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Proyek", Icons.folder, Colors.blue),
    ItemHomepage("Tambah Proyek", Icons.add_circle, Colors.green),
    ItemHomepage("Tambah Pengalaman", Icons.work, Colors.indigo),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text(
          'MyPortfolio',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      // Drawer menu
      drawer: const LeftDrawer(),

      // Body halaman utama
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Kartu informasi pemilik portofolio
          Row(
            children: [
              Expanded(
                child: InfoCard(title: 'NPM', content: npm),
              ),
              Expanded(
                child: InfoCard(title: 'Name', content: nama),
              ),
              Expanded(
                child: InfoCard(title: 'Class', content: kelas),
              ),
            ],
          ),

          const SizedBox(height: 32.0),

          // Pesan sambutan
          const Center(
            child: Text(
              'Selamat datang di MyPortfolio Mobile!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),

          const SizedBox(height: 16.0),

          // GridView untuk tombol menu
          LayoutBuilder(
            builder: (context, constraints) {
              final int crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;

              return GridView.count(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: crossAxisCount,
                shrinkWrap: true,
                children: items.map((ItemHomepage item) {
                  return ItemCard(item);
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Widget kartu informasi pemilik portofolio
class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8.0),
            Text(content, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

// Model data untuk setiap tombol menu
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
