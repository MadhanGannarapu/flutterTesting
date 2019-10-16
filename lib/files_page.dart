import 'package:flutter/material.dart';

class FilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('files page clicked');
    return Container(
      child: Center(
          child: Text(
        'Files Tab',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
        key: Key('filesPage'),
      )),
    );
  }
}
