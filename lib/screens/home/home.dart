import 'package:flutter/material.dart';
import 'package:furnitar/screens/home/widgets/product-list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FurnitAR"),
      ),
      body: Column(
        children: <Widget>[
          ProductList()
        ],
      ),
    );
  }
}