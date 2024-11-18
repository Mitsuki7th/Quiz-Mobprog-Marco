import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/theme_model.dart';
import 'model/font_model.dart';
import 'model/opacity_model.dart'; // Tambahkan model opacity jika diperlukan
import 'main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModel()),
        ChangeNotifierProvider(create: (_) => FontModel()),
        ChangeNotifierProvider(create: (_) => OpacityModel()), // Jika digunakan
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, themeModel, _) {
        return MaterialApp(
          title: 'Main_Screen',
          debugShowCheckedModeBanner: false,
          theme: themeModel.currentTheme,
          home: const MainScreen(),
        );
      },
    );
  }
}
