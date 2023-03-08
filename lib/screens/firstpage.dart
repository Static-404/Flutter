import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Library',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(19.5)),
              width: 400,
              height: 300,
              child: const Center(
                child: Text(
                  'first column',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    width: 2,
                    color: Colors.greenAccent,
                  ),
                  borderRadius: BorderRadius.circular(20.5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      offset: Offset(-3, 5),
                    ),
                  ]),
              height: 100,
              child: const Center(
                child: Text(
                  'second column',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.greenAccent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const[
                    BoxShadow(
                      color: Colors.blueGrey,
                      offset: Offset(-5, 5),
                    ),
                  ]),
              width: 400,
              height: 100,
              child: const Center(
                child: Text(
                  'third column',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
