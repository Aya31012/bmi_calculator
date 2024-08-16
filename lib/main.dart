import 'package:flutter/material.dart';
import 'package:mpi_calculator/screens/mpi_calculator.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const ApplicatinScreen(),

    );
  }
}

