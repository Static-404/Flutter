import 'package:flutter/material.dart';

class HomePage_4 extends StatelessWidget {
  const HomePage_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
            image: AssetImage('assets/images/orange pic.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
