import 'package:flutter/material.dart';
import 'package:yokkao/screens/menu.dart';
import 'package:yokkao/screens/moodentry_form.dart';
import 'package:yokkao/screens/list_itementry.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Mental Health Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Ayo jaga kesehatan mentalmu setiap hari disini!",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                ),
              ],
            ),
                  ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Mood'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemEntryFormPage(),
                ),
              );
            },
          ),
          ListTile(
              leading: const Icon(Icons.add_reaction_rounded),
              title: const Text('Daftar Mood'),
              onTap: () {
                  // Route menu ke halaman mood
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ItemEntryPage()),
                  );
              },
          ),
        ],
      ),
    );
  }
}