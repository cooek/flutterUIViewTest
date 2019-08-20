import 'package:flutter/material.dart';
import 'model/Post.dart';
import 'demo/ListDemo.dart';
import 'demo/home.dart';
import 'demo/SliverDemo.dart';
import 'demo/NavigatorDemo.dart';
import 'package:flutter/services.dart';
import 'dart:io';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid){
      SystemUiOverlayStyle systemUiOverlayStyle =SystemUiOverlayStyle(
        statusBarColor: Colors.yellow
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    // TODO: implement build
    return MaterialApp(
      routes: {
        '/about':(context) => PageDemo(title: '测试',)
      },
      debugShowCheckedModeBanner: false,
      home: home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}


