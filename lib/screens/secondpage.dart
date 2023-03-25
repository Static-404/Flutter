import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
          scrollDirection: Axis.vertical,
            children: ListTile.divideTiles(context:context,
              color: Colors.black,
              tiles:[
                _list('Zero', 'Book 0',Icons.list,),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, 'todo');
                },
                leading: Icon(Icons.list),
                title: Text('one',),
                subtitle: Text('Book 1'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, 'todo');
                },
                leading: Icon(Icons.list),
                title: Text('two',),
                subtitle: Text('Book 2'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('three',),
                subtitle: Text('Book 3'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('four',),
                subtitle: Text('Book 4'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('five',),
                subtitle: Text('Book 5'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('six',),
                subtitle: Text('Book 6'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('seven',),
                subtitle: Text('Book 7'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('eight',),
                subtitle: Text('Book 8'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('nine',),
                subtitle: Text('Book 9'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('Ten',),
                subtitle: Text('Book 10'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('eleven',),
                subtitle: Text('Book 11'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('twelve',),
                subtitle: Text('Book 12'),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '1Page');
                },
                leading: Icon(Icons.list),
                title: Text('thirteen',),
                subtitle: Text('Book 13'),
              ),
            ]).toList(),
          ),
      ),
    );
  }
  Widget _list (String h1, String h2, var ic,) {
    return ListTile(
      leading: Icon(ic),
      title: Text(h1),
      subtitle: Text(h2),
    );
  }
}

