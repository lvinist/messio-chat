import 'package:flutter/material.dart';
import 'package:messio/pages/converstationPagesSlide.dart';

void main() {
  runApp(Messio());
}

class Messio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConverstationPagesSlide(),
    );
  }
}
