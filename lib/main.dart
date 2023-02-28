
import 'package:firstapp/screens/Navbar.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';


void main() {
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
      // routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Navbar(),
    );
  }
}
