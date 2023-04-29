import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('navigation'),
      ),
      body: Column(
        children: [
          BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home))
              ]
          )
        ],
      ),
    );
  }
}
