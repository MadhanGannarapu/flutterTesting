import 'package:flutter/material.dart';
import 'package:flutterintegrationtest/files_page.dart';
import 'package:flutterintegrationtest/home_page.dart';
import 'package:flutterintegrationtest/settings_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Sample'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final List<Widget> _tabList = [
    Container(
      color: Colors.teal,
      child: Container(
        child:HomePage()
      ),
    ),
    Container(
      color: Colors.red,
      child: Container(
        child: FilesPage()
      ),
    ),
    Container(
      color: Colors.purple,
      child: Container(child: SettingsPage()),
    )
  ];

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title.toUpperCase()),
        ),
        body: TabBarView(
          children: _tabList,
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.amber,
          labelColor: Colors.amber,
          unselectedLabelColor: Colors.grey,
          key: UniqueKey(),
          tabs: [
            Tab(
              text: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              key: Key('home'),
            ),
            Tab(
              text: 'Files',
              icon: Icon(
                Icons.ac_unit,
                color: Colors.blueGrey,
              ),
              key: Key('files'),
            ),
            Tab(
              text: 'Settings',
              icon: Icon(
                Icons.accessibility,
                color: Colors.blueGrey,
              ),
              key: Key('settings'),
            ),
          ],
        ),
      ),
    );
  }
}
