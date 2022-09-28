import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webuni_flutter_seminarium/list_page.dart';
import 'package:webuni_flutter_seminarium/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Color.fromRGBO(246, 221, 202, 1.0)
      ),
      home: ListPage(),
    );
  }
}