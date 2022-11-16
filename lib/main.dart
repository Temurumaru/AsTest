import 'package:flutter/material.dart';

import 'package:astest/pages/pageHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AsTest',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const PageHome(title: 'AsTest'),
    );
  }
}