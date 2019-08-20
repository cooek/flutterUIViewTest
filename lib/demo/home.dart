import 'package:flutter/material.dart';
import '../demo/ListDemo.dart';
import '../demo/DrawerDemo.dart';
import '../demo/BottomNavigtionBar.dart';
import '../demo/LayoutDemo.dart';
import '../demo/ViewDemo.dart';
import '../demo/SliverDemo.dart';
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('NINGHAO'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () {},
              )
            ],
            elevation: 2.0,
            bottom: TabBar(
              indicatorWeight: 1.0,
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(icon: Icon(Icons.view_quilt),)
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            ListDemo(),
//            Icon(Icons.change_history, size: 182, color: Colors.black45),
//            Icon(Icons.directions_bike, size: 182, color: Colors.black45)
          LayoutDemo(),
            ViewDemo(),
            SliverDemo()
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigtionBar()),
    );
  }
}
