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
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Store',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '2Page');
          }, icon: const Icon(Icons.notification_add,color: Colors.grey,),
          ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '');
          }, icon: const Icon(Icons.person, color: Colors.grey,),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(

          children: [
            Container(
              child: Text(
                'Training Plan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('assets/images/blue pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Container(
              child: Text(
                'Meal Plan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('assets/images/pink pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Container(
              child: Text(
                'Supplements Plan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('assets/images/dark pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Container(
              child: Text(
                'Karate Plan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('assets/images/orange pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
