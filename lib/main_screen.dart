import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/theme_model.dart';
import 'model/font_model.dart';
import 'model/opacity_model.dart';
import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context).currentTheme;
    final font = Provider.of<FontModel>(context).currentFont;
    final opacity =
        Provider.of<OpacityModel>(context).opacity; // Mengambil nilai opacity

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen', style: font),
        backgroundColor: theme.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Opacity(
                  opacity: opacity,
                  child: Image.asset(
                    'lib/gambar/halloween.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Description card
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Multi-Theme & Multi-Font App!',
                      style: font.copyWith(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'This app allows you to switch between themes, fonts, and adjust image opacity dynamically. Explore the settings to choose your preferences.',
                      style: font.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Opacity(
                  opacity: opacity,
                  child: Image.asset(
                    'lib/gambar/halloween.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: theme.scaffoldBackgroundColor,
    );
  }
}
