import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Registration Page"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Container(
            width: 400,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(5.0,-5.0,))
              ],
              border: Border.all(
                color: Colors.blueGrey,
                width: 5,
              ),
            ),
            padding: const EdgeInsets.all(30),
            // color: Colors.lightGreenAccent,
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
                  decoration: const InputDecoration(hintText: "User Name", hintStyle: TextStyle(color: Colors.black), border: OutlineInputBorder(),),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Email", hintStyle: TextStyle(color: Colors.black),border: OutlineInputBorder(),),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(hintText: "Password", hintStyle: TextStyle(color: Colors.black),border: OutlineInputBorder(),),
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
                      height: 20,
                      color: Colors.black12,
                    ),
                    Container(
                      width: 50,
                      height: 20,
                      color: Colors.black12,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
