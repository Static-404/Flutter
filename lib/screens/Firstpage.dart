import 'package:flutter/material.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foke Bakes', style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color:Colors.blue,
              child: Center(
                child: Text('first column', style: TextStyle(color: Colors.black,fontSize: 24),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 200,
              height: 200,
              color:Colors.blue,
              child: Center(
                child: Text('second column', style: TextStyle(color: Colors.black,fontSize: 24),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 200,
              height: 200,
              color:Colors.blue,
              child: Center(
                child: Text('third column', style: TextStyle(color: Colors.black,fontSize: 24),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
