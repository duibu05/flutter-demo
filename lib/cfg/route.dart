import 'package:flutter/widgets.dart';
import 'package:flutter_demo/basic_layout.dart';
import 'package:flutter_demo/pages/keep_alive.dart';
import 'package:flutter_demo/pages/keep_alive2.dart';
import 'package:flutter_demo/pages/keep_alive3.dart';
import 'package:flutter_demo/pages/news/news.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => BasicLayout(),
  '/news': (context) => NewsPage(),
  '/keep_alive': (context) => KeepAlivePage(),
  '/keep_alive2': (context) => KeepAlivePage2(),
  '/keep_alive3': (context) => KeepAlivePage3(),
};
