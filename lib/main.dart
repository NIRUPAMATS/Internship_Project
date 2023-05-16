import 'package:flutter/material.dart';
import 'package:flutter_internship_project/Frame1/frame1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Frame1());
  }
}
