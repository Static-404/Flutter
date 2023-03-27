
import 'package:firstapp/screens/firstpage.dart';
import 'package:firstapp/screens/Home.dart';
import 'package:firstapp/screens/Navbar.dart';
import 'package:firstapp/screens/Login.dart';
import 'package:firstapp/screens/Registration.dart';
import 'package:firstapp/screens/page_1.dart';
import 'package:firstapp/screens/page_2.dart';
import 'package:firstapp/screens/page_3.dart';
import 'package:firstapp/screens/page_4.dart';
import 'package:firstapp/screens/secondpage.dart';
import 'package:firstapp/screens/todo.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:go_router/go_router.dart';


void main() async{
  await Hive.initFlutter("hive_box");
  runApp(const MyApp());
}
// final _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) {
//         return const Registration();
//       },
//     ),
//     GoRoute(
//       path: 'Login',
//       builder: (BuildContext context, GoRouterState state) {
//         return const Login();
//       },
//     ),
//   ],
// );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Library App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: 'Home',
      routes: {
        'Navbar': (context) => const Navbar(),
        'Home': (context) => const Home(),
        'Login': (context) => const Login(),
        'Registration': (context) => const Registration(),
        '1Page': (context) => const FirstPage(),
        '2Page': (context) => const SecondPage(),
        'todo': (context) => const TaskPage(),
        'page1': (context) => const Page1(),
        'page2': (context) => const Page2(),
        'page3': (context) => const Page3(),
        'page4': (context) => const Page4(),
      },
    );
  }
}
