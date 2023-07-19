import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myntra_clone/res/media/colors/colors.dart';
import 'package:myntra_clone/screens/splash_screen.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Myntra Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: secondaryColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
