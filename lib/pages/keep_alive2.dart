import 'package:flutter/material.dart';

class KeepAlivePage2 extends StatefulWidget {
  KeepAlivePage2({Key key}) : super(key: key);

  @override
  _KeepAlivePage2State createState() => _KeepAlivePage2State();
}

class _KeepAlivePage2State extends State<KeepAlivePage2>
    with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('状态已保持'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('新页面'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/keep_alive3');
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
        heroTag: 'keep_alive2',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
