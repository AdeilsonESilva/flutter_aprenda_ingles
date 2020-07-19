import 'package:flutter/material.dart';
import 'package:flutter_aprenda_ingles/telas/Bichos.dart';
import 'package:flutter_aprenda_ingles/telas/Numeros.dart';
import 'package:flutter_aprenda_ingles/telas/Vogais.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Aprenda inglês'),
          bottom: TabBar(
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            // labelColor: Colors.amber,
            // unselectedLabelColor: Colors.red,
            tabs: [
              Tab(text: 'Bichos'),
              Tab(text: 'Números'),
              Tab(text: 'Vogais'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Bichos(),
            Numeros(),
            Vogais(),
          ],
        ),
      ),
    );
  }
}
