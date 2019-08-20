import 'package:flutter/material.dart';
import 'package:ninghaodemo/model/Post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text('NIHAOWANG'),
//            pinned: true,
//          titleSpacing: 4.0,
//          floating: true,
          expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('NINHAOWANG'.toUpperCase(),
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 5.0,
                fontWeight: FontWeight.w400
              ),),
              background: Image.network('https://i1.hdslb.com/bfs/face/cc8cf693304914375e4e7dc0f72e60c7d6588390.jpg@72w_72h.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGridListDemo(),
          )),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0),
      delegate: SliverChildBuilderDelegate((BuildContext context, int idx) {
        return Container(
          child: Image.network(
            posts[idx].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverGridListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int idx) {
      return Padding(
        padding: EdgeInsets.only(bottom: 32.0),
        child: Material(
          elevation: 4.0,
          shadowColor: Colors.grey.withOpacity(0.5),

          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child:Image.network(
                  posts[idx].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(top: 2.0,
              left: 32.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(posts[idx].title,style: TextStyle(color: Colors.white,fontSize: 20.0),),
                  Text(posts[idx].author,style: TextStyle(color: Colors.white,fontSize: 13.0),)
                ],
              ),)
            ],
          )
        )
      );
    }, childCount: posts.length));
  }
}
