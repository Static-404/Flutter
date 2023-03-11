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
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '2Page');
          }, icon: Icon(Icons.book),)
        ],
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
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
                    'Dashboard',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 2,
                          color: Colors.greenAccent,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blueGrey,
                            offset: Offset(0, 0),
                          ),
                        ]),
                    width: 190,
                    height: 170,
                    child: const Center(
                      child: Text(
                        '2',
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
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const[
                          BoxShadow(
                            color: Colors.blueGrey,
                            offset: Offset(0, 0),
                          ),
                        ]),
                    width: 190,
                    height: 170,
                    child: const Center(
                      child:
                      Text(
                        '3',
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
