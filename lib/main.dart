import 'package:aplikasi_berita_tugas2/Model/NewsModel.dart';
import 'package:aplikasi_berita_tugas2/Pages/MyHomePage.dart';
import 'package:aplikasi_berita_tugas2/Pages/MyNewsDetailPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        useMaterial3: false,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
