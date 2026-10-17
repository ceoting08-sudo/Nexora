import 'package:flutter/material.dart';

void main() => runApp(const NexoraApp());

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'NEXORA',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color(0xFF1565C0)),
        home: const HomePage(),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF071A3D), Color(0xFF0D47A1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(26)),
                      child: const Center(child: Text('N', style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: Color(0xFF1565C0)))),
                    ),
                    const SizedBox(height: 24),
                    const Text('NEXORA', style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold, letterSpacing: 4)),
                    const SizedBox(height: 12),
                    const Text('Chaque élève a son chemin vers la réussite.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white70, fontSize: 16)),
                    const SizedBox(height: 34),
                    const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      _Feature(icon: Icons.menu_book, label: 'Cours'),
                      _Feature(icon: Icons.auto_awesome, label: 'IA'),
                      _Feature(icon: Icons.trending_up, label: 'Progrès'),
                    ]),
                    const SizedBox(height: 38),
                    SizedBox(width: double.infinity, height: 54, child: ElevatedButton(
                      onPressed: () => showDialog<void>(context: context, builder: (context) => AlertDialog(
                        title: const Text('Bienvenue sur NEXORA'),
                        content: const Text('Cette version est un pack de démarrage web. Remplace lib/main.dart par le code complet de ton application NEXORA pour retrouver toutes tes fonctionnalités.'),
                        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('Compris'))],
                      )),
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFB300), foregroundColor: Colors.black),
                      child: const Text('COMMENCER', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1)),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

class _Feature extends StatelessWidget {
  const _Feature({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) => Column(children: [
    Icon(icon, color: const Color(0xFFFFB300), size: 30),
    const SizedBox(height: 8),
    Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
  ]);
}
