import 'package:exxpnss/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expnsss",
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF00B2E7),
          secondary: Color(0xFFFF64F7),
          tertiary: Color(0xFFFF8D6C),
          outline: Colors.grey,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
