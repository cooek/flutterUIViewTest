import 'package:flutter/material.dart';

class BottomNavigtionBar extends StatefulWidget {
  @override
  _BottomNavigtionBarState createState() => _BottomNavigtionBarState();
}

class _BottomNavigtionBarState extends State<BottomNavigtionBar> {
  int _currentindex = 0;

  _onTapHander(idx) {
   setState(() {
     _currentindex =idx;
   });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: _onTapHander,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text(
                'Explore',
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('History')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('List')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Me'))
        ]);
  }
}
