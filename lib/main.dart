import 'package:el_reprobado/config/theme/app_theme.dart';
import 'package:el_reprobado/presentation/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectdColor: 1).theme(),
      home: const ChatScreen(),
    );
  }
}
