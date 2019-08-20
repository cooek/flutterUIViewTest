import 'package:flutter/material.dart';
import '../model/Post.dart';

class ViewDemo extends StatelessWidget {
  List<Widget> _Builder(int idx) {
    return List.generate(idx, (int idex){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $idx',style: TextStyle(fontSize: 18.0,color: Colors.red),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _Builder(100),
    );
  }
}

class PageViewDemo extends StatelessWidget {
//  Widget _pageItemBuilder(BuildContext context, int idx) {
//    return Stack(
//      children: <Widget>[
//        SizedBox.expand(
//          child: Image.network(posts[idx].imageUrl, fit: BoxFit.cover),
//        ),
//        Positioned(
//          bottom: 8.0,
//          left: 8.0,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
////            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//              Text(posts[idx].title,style: TextStyle(fontWeight: FontWeight.bold),),
//              Text(posts[idx].author,)
//            ],
//          ),
//
//        )
//      ],
//    );
//

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
//      pageSnapping: false,
      scrollDirection: Axis.vertical,
      reverse: true,
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.9),
      onPageChanged: (idx) {
        debugPrint(idx.toString());
      },
      children: <Widget>[
        Container(
          child: Text(
            'PageView',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
        ),
        Container(
          color: Colors.tealAccent,
          child: Text('Accent'),
          alignment: Alignment(0.0, 0.0),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text('red'),
        )
      ],
    );
  }
}
