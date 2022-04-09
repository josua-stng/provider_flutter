import 'package:flutter/material.dart';

class berandaPage extends StatefulWidget {
  final String username;
  berandaPage({Key? key, required this.username}) : super(key: key);

  @override
  State<berandaPage> createState() => _nameState();
}

class _nameState extends State<berandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beranda')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(widget.username),
          ],
        ),
      ),
    );
  }
}
