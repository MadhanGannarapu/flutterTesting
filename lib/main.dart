import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _displayValue = "";

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('button fired');
    final _emailController = TextEditingController();

    void _submitData() {
      final enteredEmail = _emailController.text;
      setState(() => _displayValue = enteredEmail);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
              key: Key('counter'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                key: Key('textField'),
                decoration: InputDecoration(
                    labelText: 'Enter your email',
                    border: OutlineInputBorder()),
                controller: _emailController,
                onSaved: (_) => _submitData(),
              ),
            ),
            RaisedButton(
              key: Key('signupButton'),
              child: Text(
                'Signup',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: _submitData,
            ),
            Text(
              "Text Field Value: " + _displayValue.toUpperCase(),
              style: TextStyle(fontSize: 16.0),
            ),
            Text(_emailController.text, style: TextStyle(color: Colors.black))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: Icon(
          
          Icons.add,
          key: Key('buttonTab'),),
      ),
    );
  }
}
