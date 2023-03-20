import 'package:firstapp/screens/homepage_1.dart';
import 'package:firstapp/screens/homepage_2.dart';
import 'package:firstapp/screens/homepage_3.dart';
import 'package:firstapp/screens/homepage_4.dart';
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
       //  appBar: AppBar(
       //    backgroundColor: Colors.green.withOpacity(0.7),
       //    elevation: 0,
       //    title: const Text("Welcome"),
       //    centerTitle: true,
       //    actions: [
       //      IconButton(
       //        onPressed: (){
       //          Navigator.pushNamed(context, 'Navbar');
       //        },
       //        icon: const Icon(Icons.person),
       //      ),
       //    ],
       //    // leading:
       //    // IconButton(
       //    //   icon: Icon(Icons.menu),
       //    //   onPressed: () {
       //    //
       //    //   },
       //    // ),
       //  ),
       // drawer: Drawer(
       //   child: Container(
       //     color: Colors.transparent,
       //     child: ListView(
       //       children: [
       //         const DrawerHeader(child: Center(
       //           child: Text(
       //             'E-Lbrary',
       //             style: TextStyle(fontSize: 30),
       //           ),
       //         ),
       //         ),
       //         ListTile(
       //           leading: const Icon(Icons.person),
       //           title: const Text('Registration', style: TextStyle(fontSize: 15),
       //           ),
       //           onTap: (){
       //             Navigator.pushNamed(context, 'Navbar');
       //           },
       //         ),
       //         ListTile(
       //           leading: const Icon(Icons.login_sharp),
       //           title: const Text('Login', style: TextStyle(fontSize: 15),
       //           ),
       //           onTap: (){
       //             Navigator.pushNamed(context, 'Login');
       //           },
       //         ),
       //         ListTile(
       //           leading: const Icon(Icons.home),
       //           title: const Text('Home', style: TextStyle(fontSize: 15),
       //           ),
       //           onTap: (){
       //             Navigator.pushNamed(context, '1Page');
       //           },
       //         ),
       //         ListTile(
       //           leading: const Icon(Icons.library_books_outlined),
       //           title: const Text('Books', style: TextStyle(fontSize: 15),
       //           ),
       //           onTap: (){
       //             Navigator.pushNamed(context, '2Page');
       //           },
       //         ),
       //         ListTile(
       //           leading: const Icon(Icons.list_alt_outlined,),
       //           title: const Text('Todo', style: TextStyle(fontSize: 15),
       //           ),
       //           onTap: (){
       //             Navigator.pushNamed(context, 'todo');
       //           },
       //         ),
       //       ],
       //     ),
       //   ),
       // ),
       body: Stack(
           children: [
             PageView(
               controller: _controller,
             onPageChanged: (index){
                 setState(() {
                   onLastPage = (index == 3);
                 });
             },
             children: [
               HomePage_1(),
               HomePage_2(),
               HomePage_3(),
               HomePage_4(),
             ],
           ),
             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Container(
                 alignment: Alignment(0,-0.75),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CircleAvatar(
                       backgroundImage: AssetImage('assets/images/letter v,png'),
                     ),
                     onLastPage
                         ? GestureDetector(
                         onTap: () {
                           Navigator.pushNamed(context, 'Navbar');

                         },
                         child: const Text('Done',style: TextStyle(color: Colors.white),)
                     )
                         : GestureDetector(
                         onTap: (){
                           _controller.nextPage(
                               duration: const Duration(milliseconds: 500),
                               curve: Curves.easeIn);
                         },
                         child: const Icon(Icons.arrow_forward,color: Colors.white,)
                     ),
                   ],
                 ),
               ),
             ),
             Container(
               alignment: const Alignment(0,0.70),
               child: SmoothPageIndicator(
                 controller: _controller,
                 count: 4,
                 effect: const SwapEffect(
                   dotColor: Colors.black26,
                   activeDotColor: Colors.white,
                   type: SwapType.yRotation,
                 ),
               ),
             ),
             Container(
               alignment: Alignment(0,0.88),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   FloatingActionButton.extended(
                     onPressed: (){
                       Navigator.pushNamed(context, 'Login');
                     },
                     label: Text('Log In'),
                     extendedTextStyle:TextStyle(
                       color: Colors.white,
                       fontSize: 15,),
                     backgroundColor: Colors.transparent,
                   ),
                   FloatingActionButton.extended(
                     onPressed: (){
                       Navigator.pushNamed(context, 'Registration');
                     },
                     label: Text('Sign Up'),
                     extendedTextStyle:TextStyle(
                       color: Colors.black87,
                       fontSize: 15,),
                     backgroundColor: Colors.transparent,
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
