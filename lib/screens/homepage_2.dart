import 'package:flutter/material.dart';

class HomePage_2 extends StatelessWidget {
  const HomePage_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/images/pink pic.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
