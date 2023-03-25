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
          }, icon: const Icon(Icons.home))
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
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'todo');
                  }, child: _list('One', 'Book 1',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'todo');
                    }, child: _list('Two', 'Book 2',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Three', 'Book 3',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Four', 'Book 4',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Five', 'Book 5',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Six', 'Book 6',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Seven', 'Book 7',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Eight', 'Book 8',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Nine', 'Book 9',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Ten', 'Book 10',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Eleven', 'Book 11',Icons.list,)),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '1Page');
                    }, child: _list('Twelve', 'Book 12',Icons.list,)),
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

