// import 'package:firstapp/screens/Registration.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Login"),
        centerTitle: true,
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
              obscureText: true,
              decoration: const InputDecoration(hintText: "Password", hintStyle: TextStyle(color: Colors.black)),
            ),
            MaterialButton(onPressed: (){},
              color: Colors.lightBlue,
              child: const Text("Login", style: TextStyle(color: Colors.black),),
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
    );
  }
}
