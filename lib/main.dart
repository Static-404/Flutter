import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Hello world"),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.login_outlined), label: "Login"),
            BottomNavigationBarItem(icon: Icon(Icons.app_registration_outlined), label: "Registration"),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          color: Colors.lightGreenAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage("https://i.pravatar.cc/150?u=fake@pravatar.com"),),
                )
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: "User Name", hintStyle: TextStyle(color: Colors.black)),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: "Email", hintStyle: TextStyle(color: Colors.black)),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(hintText: "Password", hintStyle: TextStyle(color: Colors.black)),
              ),
              MaterialButton(onPressed: (){},
                color: Colors.lightBlue,
                child: const Text("Register", style: TextStyle(color: Colors.black),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.black12,
                    ),
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.black12,
                    )
                  ],
                ),
              ],
          ),
        ),
      )
    );
  }
}
