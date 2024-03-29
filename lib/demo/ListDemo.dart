import 'package:flutter/material.dart';
import '../model/Post.dart';
import '../demo/Postshow.dart';

class ListDemo extends StatelessWidget {
  Widget _listitemBuilder(BuildContext context, int idx) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    posts[idx].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  posts[idx].title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .title,
                ),
                Text(
                  posts[idx].author,
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead,
                ),
                SizedBox(
                  height: 16.0,
                )
              ],
            ),
            Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.white.withOpacity(0.3),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) =>PostShow(post: posts[idx])));
                    },
                  ),
                )),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listitemBuilder);
  }
}
