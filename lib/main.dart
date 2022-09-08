import 'package:flutter/material.dart';
import 'package:pedra_papel_tesoura/views/home.dart';

void main() {
  runApp( MaterialApp(

    theme: ThemeData(
      primarySwatch: Colors.orange,
      primaryColor: Colors.orange
    ),

    home: const Home(),

  ));
}

