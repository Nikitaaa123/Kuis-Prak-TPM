import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tampilanaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Play Store"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
          ),
          Text('Aplikasi Tersedia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
          ),
        ],
      ),
    );
  }
}
