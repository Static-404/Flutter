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
              icon: Icon(Icons.person),
            ),
          ],
          leading:
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

            },
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
                             duration: Duration(microseconds: 500),
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
