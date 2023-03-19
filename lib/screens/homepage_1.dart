import 'package:flutter/material.dart';

class HomePage_1 extends StatelessWidget {
  const HomePage_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/images/blue pic.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment(-0.6, 0),
        child: Text(
            'Supplements',
              style: TextStyle(color: Colors.white, fontSize: 50,),
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
      ),
    );
  }
}
