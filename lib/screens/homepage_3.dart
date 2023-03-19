import 'package:flutter/material.dart';

class HomePage_3 extends StatelessWidget {
  const HomePage_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/images/dark pic.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
