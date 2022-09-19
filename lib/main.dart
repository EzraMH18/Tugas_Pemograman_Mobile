import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu_page.dart';
import 'package:flutter_application_1/tugas_cupertino.dart';
import 'package:flutter_application_1/tugas_material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}
