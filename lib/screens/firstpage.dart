import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
      body: ListView(

        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(16.0),
            height: 30,
            child: const Text(
              'Store',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'todo');
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:const DecorationImage(
                  image: AssetImage('assets/images/blue pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: _title('Training Plan')
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'todo');
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:const DecorationImage(
                  image: AssetImage('assets/images/pink pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: _title('Meal Plan')
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'todo');
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:const DecorationImage(
                  image: AssetImage('assets/images/dark pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: _title('Supplements Plan')
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'todo');
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              height: 160,
              decoration: BoxDecoration(
                image:const DecorationImage(
                  image: AssetImage('assets/images/orange pic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: _title('Karate Plan'),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        onPressed: (){},
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black26,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.table_chart), label: "Feed"),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: "Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Store"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Menu"),
        ],
      ),
    );
  }
  Widget _title (String title,){
    return Text(
        title,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
