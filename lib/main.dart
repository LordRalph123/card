import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: card_project(),
      ),
    );

// ignore: camel_case_types
class card_project extends StatelessWidget {
  const card_project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 215, 198),
      appBar: AppBar(
        title: const Text(
          'Card Project',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 4.0,
      ),
      body: Center(
        child: Card(
          color: Colors.teal,
          child: ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(
              'Shop',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 16),
            ),
            iconColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
