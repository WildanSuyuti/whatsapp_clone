import 'package:flutter/material.dart';
import 'package:whatsapp_clone/assets/get_colors.dart';
import 'package:whatsapp_clone/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: GetColors.darkGreen),
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
      },
    );
  }
}
