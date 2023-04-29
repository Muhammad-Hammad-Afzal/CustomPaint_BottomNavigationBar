import 'package:flutter/material.dart';

class Manu extends StatefulWidget {
  const Manu({Key? key}) : super(key: key);

  @override
  State<Manu> createState() => _ManuState();
}

class _ManuState extends State<Manu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('manu'),
      ),
    );
  }
}
