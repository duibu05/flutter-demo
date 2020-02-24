import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/keep_alive.dart';
import 'package:flutter_demo/pages/keep_alive2.dart';

class BasicLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _BasicLayoutState();
  }
}

class _BasicLayoutState extends State<BasicLayout> {
  // 1.声明一个page controller并在initState中实例化
  PageController _pageController;

  // 导航索引 0-home 1-food 2-me
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  // 5. 资源回收
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  // 3.处理底部导航按钮点击事件
  void _onTap(int page) {
    // 4.页面跳转动画
    _pageController.animateToPage(
      page,
      duration: new Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  void _changePage(int page) {
    this.setState(() {
      _pageIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new HomePage(title: 'HOME'),
          new KeepAlivePage(),
          new KeepAlivePage2(),
        ],

        // 2.将page view委托给controller
        controller: _pageController,
        onPageChanged: _changePage,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('HOME', style: TextStyle(color: Colors.black87)),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.fastfood),
            title: new Text('NEWS', style: TextStyle(color: Colors.black87)),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.face),
            title: new Text('ME', style: TextStyle(color: Colors.black87)),
          ),
        ],
        onTap: _onTap,
        currentIndex: _pageIndex,
      ),
    );
  }
}
