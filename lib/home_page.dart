import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Home page clicked');
    return Container(
      child: Center(
          child: Text(
        'Home Tab',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 50
        ),
        key: Key('homePage'),
      )),
    );
  }
}
