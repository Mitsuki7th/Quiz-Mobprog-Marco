import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/theme_model.dart';
import 'model/font_model.dart';
import 'model/opacity_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeModel = Provider.of<ThemeModel>(context);
    final fontModel = Provider.of<FontModel>(context);
    final opacityModel = Provider.of<OpacityModel>(context);

    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: fontModel.currentFont),
        backgroundColor: themeModel.currentTheme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Theme',
              style: fontModel.currentFont.copyWith(fontSize: screenWidth * 0.05),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () => themeModel.setTheme(ThemeModel.themeA()),
                  child: Text('Tema I', style: fontModel.currentFont),
                ),
                ElevatedButton(
                  onPressed: () => themeModel.setTheme(ThemeModel.themeB()),
                  child: Text('Tema II', style: fontModel.currentFont),
                ),
                ElevatedButton(
                  onPressed: () => themeModel.setTheme(ThemeModel.themeC()),
                  child: Text('Tema III', style: fontModel.currentFont),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Select Font',
              style: fontModel.currentFont.copyWith(fontSize: screenWidth * 0.05),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () => fontModel.setFont(FontModel.fontA()),
                  child: Text('Font A', style: fontModel.currentFont),
                ),
                ElevatedButton(
                  onPressed: () => fontModel.setFont(FontModel.fontB()),
                  child: Text('Font B', style: fontModel.currentFont),
                ),
                ElevatedButton(
                  onPressed: () => fontModel.setFont(FontModel.fontC()),
                  child: Text('Font C', style: fontModel.currentFont),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Adjust Image Opacity',
              style: fontModel.currentFont.copyWith(fontSize: screenWidth * 0.05),
            ),
            const SizedBox(height: 10),
            Slider(
              value: opacityModel.opacity,
              onChanged: (newValue) {
                opacityModel.setOpacity(newValue);
              },
              min: 0.0,
              max: 1.0,
              divisions: 10,
              label: '${(opacityModel.opacity * 100).toInt()}%',
            ),
            Text(
              'Opacity: ${(opacityModel.opacity * 100).toInt()}%',
              style: fontModel.currentFont.copyWith(fontSize: screenWidth * 0.04),
            ),
          ],
        ),
      ),
      backgroundColor: themeModel.currentTheme.scaffoldBackgroundColor,
    );
  }
}
