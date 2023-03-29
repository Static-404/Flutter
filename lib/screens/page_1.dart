import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          height: 250,
          width: 380,
          alignment: Alignment(-1, 0),
          child: Image.asset('assets/images/dark pic.jpg'),
        ),
        Container(
          alignment: Alignment(0, 0),
          child: Text(
            'Hello',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
        ),
      ]),
    );
  }
}
