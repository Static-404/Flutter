import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.withOpacity(0.7),
          elevation: 0,
          title: const Text("Welcome"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, 'Navbar');
              },
              icon: const Icon(Icons.person),
            ),
          ],
          // leading:
          // IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //
          //   },
          // ),
        ),
       drawer: Drawer(
         child: Container(
           color: Colors.transparent,
           child: ListView(
             children: [
               const DrawerHeader(child: Center(
                 child: Text(
                   'E-Lbrary',
                   style: TextStyle(fontSize: 30),
                 ),
               ),
               ),
               ListTile(
                 leading: const Icon(Icons.person),
                 title: const Text('Registration', style: TextStyle(fontSize: 15),
                 ),
                 onTap: (){
                   Navigator.pushNamed(context, 'Navbar');
                 },
               ),
               ListTile(
                 leading: const Icon(Icons.login_sharp),
                 title: const Text('Login', style: TextStyle(fontSize: 15),
                 ),
                 onTap: (){
                   Navigator.pushNamed(context, 'Login');
                 },
               ),
               ListTile(
                 leading: const Icon(Icons.home),
                 title: const Text('Home', style: TextStyle(fontSize: 15),
                 ),
                 onTap: (){
                   Navigator.pushNamed(context, '1Page');
                 },
               ),
               ListTile(
                 leading: const Icon(Icons.library_books_outlined),
                 title: const Text('Books', style: TextStyle(fontSize: 15),
                 ),
                 onTap: (){
                   Navigator.pushNamed(context, '2Page');
                 },
               ),
             ],
           ),
         ),
       ),
       body: Stack(
           children: [
             PageView(
               controller: _controller,
             onPageChanged: (index){
                 setState(() {
                   onLastPage = (index == 2);
                   print("$index, $onLastPage");
                 });
             },
             children: [
               Container(
                 color: Colors.lightGreen,
                 child: Image.asset('assets/images/book.jpg'),
               ),
               Container(
                 color: Colors.lightGreen,
                 child: Image.asset('assets/images/library.jpg'),
               ),
               Container(
                 color: Colors.lightGreen,
                 child: Image.asset('assets/images/reading.jpg'),
               )
             ],
           ),
             Container(
               alignment: const Alignment(0,0.85),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   GestureDetector(
                       onTap: () {
                         Navigator.pushNamed(context, 'Navbar');

                       },
                       child: const Text('Skip')),
                   SmoothPageIndicator(
                     controller: _controller,
                     count: 3,
                     effect: const SwapEffect(
                       dotColor: Colors.blue,
                       activeDotColor: Colors.white,
                       type: SwapType.yRotation,
                     ),
                   ),
                   onLastPage
                       ? GestureDetector(
                       onTap: () {
                         Navigator.pushNamed(context, 'Navbar');

                       },
                       child: const Text('Done'))
                       : GestureDetector(
                       onTap: (){
                         _controller.nextPage(
                             duration: const Duration(microseconds: 500),
                             curve: Curves.easeIn);
                       },
                       child: const Icon(Icons.arrow_forward)
                   ),
                 ],
               ),
             )
           ],
       )
      // Center(child: Text("Hello Guys"),),
      );
  }
}
