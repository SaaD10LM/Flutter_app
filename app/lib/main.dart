import 'package:flutter/material.dart';
import 'package:app/pages/home.page.dart';
import 'package:app/pages/chat.page.dart';
import 'package:app/pages/counter.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Optional: remove debug banner
      initialRoute: '/', // Explicitly set initial route
      routes: {
        '/': (context) => const HomePage(),
        '/counter': (context) => const CounterPage(),
        '/chat': (context) => const ChatPage(),
      },
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 33),
        ),
        indicatorColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
