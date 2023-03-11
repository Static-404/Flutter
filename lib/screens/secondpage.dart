import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home_outlined),
          onPressed: () {
            Navigator.pushNamed(context, '1Page');
          },
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, 'Home');
          }, icon: Icon(Icons.home))
        ],
        backgroundColor: Colors.green,
        title: const Text('Books'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.list),
                title: Text('one',),
                subtitle: Text('Book 1'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('two',),
                subtitle: Text('Book 2'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('three',),
                subtitle: Text('Book 3'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('four',),
                subtitle: Text('Book 4'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('five',),
                subtitle: Text('Book 5'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('six',),
                subtitle: Text('Book 6'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('seven',),
                subtitle: Text('Book 7'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('eight',),
                subtitle: Text('Book 8'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('nine',),
                subtitle: Text('Book 9'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Ten',),
                subtitle: Text('Book 10'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('eleven',),
                subtitle: Text('Book 11'),
              ),
            ],
          ),
      ),
    );
  }
}
