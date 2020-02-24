import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/news/models.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final String _btnName1 = '打开新页面, 不携带参数';
  static final String _btnName2 = '打开新页面, 携带参数';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _jump(final params) async {
    final arg = ArgObj(params == null ? _btnName1 : _btnName2, params);
    final result = await Navigator.pushNamed(context, '/news', arguments: arg);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('返回值'),
          content: Text('$result'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(_btnName1),
              textColor: Colors.blue,
              onPressed: () {
                _jump(null);
              },
            ),
            FlatButton(
              child: Text(_btnName2),
              textColor: Colors.blue,
              onPressed: () {
                _jump(_counter);
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
        heroTag: 'home_page',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
