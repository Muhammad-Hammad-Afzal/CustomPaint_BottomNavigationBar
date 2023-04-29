import 'package:flutter/material.dart';

class NotoficationScreen extends StatefulWidget {
  const NotoficationScreen({Key? key}) : super(key: key);

  @override
  State<NotoficationScreen> createState() => _NotoficationScreenState();
}

class _NotoficationScreenState extends State<NotoficationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notification'),
      ),
    );
  }
}
