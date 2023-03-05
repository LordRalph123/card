import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: comrade(),
      ),
    );

class comrade extends StatefulWidget {
  const comrade({Key? key}) : super(key: key);

  @override
  State<comrade> createState() => _comradeState();
}

class _comradeState extends State<comrade> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Comrade ID',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 4.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        backgroundColor: Colors.brown,
        child: const Icon(
          Icons.add,
          color: Colors.redAccent,
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 32.0, 14.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/com_1.jpg'),
                    radius: 85,
                  ),
                ),
                const Divider(
                  height: 95,
                  thickness: 2,
                  color: Color(0xFF665545),
                ),
                const Text(
                  'NAME',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Com Mikki',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Violence Level',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '$level',
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 17),
                    const Text('comrade@gmail.com'),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
