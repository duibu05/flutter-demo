import 'package:flutter/material.dart';

class KeepAlivePage extends StatefulWidget {
  KeepAlivePage({Key key}) : super(key: key);

  @override
  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage> {
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
            Container(
              padding: EdgeInsets.all(20),
              child: Wrap(
                children: <Widget>[
                  Text(
                      '底部三个切换页面是PageView实现的, 切换底部按钮跳转到新页面后, 旧页面的state被销毁, 需要单独处理才能缓存state, 页面ME已实现缓存state···如果是路由打开的页面, 默认缓存state')
                ],
              ),
            ),
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
        heroTag: 'keep_alive',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
