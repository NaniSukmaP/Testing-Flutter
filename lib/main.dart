import 'package:flutter/material.dart';
import 'package:tugas_1/screens/awal.dart';

void main() => runApp(Mine());
class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Flutter Demo Home Page'),
      
    );
  }
}
