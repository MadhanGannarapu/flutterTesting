import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Settings page clicked');
    return Container(
      child: Center(
          child: Text(
        'Settings Tab',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
            key: Key('settingsPage'),
      )),
    );
  }
}
