import 'package:flutter/material.dart';

class Isca extends StatelessWidget {
  const Isca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Isca'),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        ],
      ),
      body: Center(
        child: Text('Página de Isca'),
      ),
    );
  }
}