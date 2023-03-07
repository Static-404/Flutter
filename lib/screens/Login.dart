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
      body: Center(
        child: Container(
          width: 400,
          height: 450,
          decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            border: Border.all(
              color: Colors.blueGrey,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                offset: Offset(-5.0,5.0),
              ),
            ],
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 80,
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
                    height: 50,
                    color: Colors.black12,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black12,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
