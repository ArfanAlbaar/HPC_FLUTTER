import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int counter = 0;

  void add() {
    counter++;
  }

  void minus() {
    counter--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: TextStyle(
              color: Colors.red,
              fontSize: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (() {
                  setState(() {
                    minus();
                  });
                }),
                child: Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: (() {
                  setState(() {
                    add();
                  });
                }),
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
