import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('wanghao',
              style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('war@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i1.hdslb.com/bfs/face/cc8cf693304914375e4e7dc0f72e60c7d6588390.jpg@72w_72h.webp'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight))),

          ),
          ListTile(title: Text('Messages', textAlign: TextAlign.right,),
              trailing: Icon(
                  Icons.message, color: Colors.black26, size: 22),
              onTap: () {
                Navigator.pop(context);
              }
          ),
          ListTile(title: Text('star', textAlign: TextAlign.right,),
            trailing: Icon(
                Icons.favorite, color: Colors.black26, size: 22),
            onTap: () {
              Navigator.pop(context);
            },

          ),
          ListTile(title: Text('Setting', textAlign: TextAlign.right,),
            trailing: Icon(
                Icons.settings, color: Colors.black26, size: 22),
            onTap: () {
              Navigator.pop(context);
            },

          )
        ],
      ),
    );
  }
}
