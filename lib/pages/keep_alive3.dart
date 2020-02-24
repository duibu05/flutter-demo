import 'package:flutter/material.dart';

class KeepAlivePage3 extends StatefulWidget {
  KeepAlivePage3({Key key}) : super(key: key);

  @override
  _KeepAlivePage3State createState() => _KeepAlivePage3State();
}

class _KeepAlivePage3State extends State<KeepAlivePage3> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('状态未保持'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('新页面'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/keep_alive2');
              },
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        heroTag: 'keep_alive3',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
