import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/news/models.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _counter = 0;

  void _add() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ArgObj arg = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(arg.title),
        leading: BackButton(onPressed: () => Navigator.pop(context, _counter)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('首页传参: '),
            Text(arg.id.toString(),
                style: Theme.of(context).textTheme.display1),
            Text('本页点击次数'),
            Text(_counter.toString(),
                style: Theme.of(context).textTheme.display1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _add,
        heroTag: 'news',
        child: Icon(Icons.add),
      ),
    );
  }
}
