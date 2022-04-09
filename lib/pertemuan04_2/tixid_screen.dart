import 'dart:html';

import 'package:flutter/material.dart';

class TixIdScreen extends StatefulWidget {
  TixIdScreen({Key? key}) : super(key: key);

  @override
  State<TixIdScreen> createState() => _TixIdScreenState();
}

class _TixIdScreenState extends State<TixIdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TixID Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            
          )
        ]),
      ),
    );
  }
}
