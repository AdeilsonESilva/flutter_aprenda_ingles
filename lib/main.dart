import 'package:flutter/material.dart';
import 'package:flutter_aprenda_ingles/telas/Home.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Color(0xff795548),
        // accentColor: Colors.green,
        scaffoldBackgroundColor: Color(0xfff5e9b9),
      ),
    ));
