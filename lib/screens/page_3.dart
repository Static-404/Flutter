import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
        centerTitle: true,
      ),
      body: Container(
        alignment: const Alignment(0,0),
        child: const Text('Hello guys'),
      ),
    );
  }
}
