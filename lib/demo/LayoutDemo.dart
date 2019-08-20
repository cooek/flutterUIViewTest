import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        ConstrainedBox(
          child: Container(
            color: Color.fromRGBO(3, 54, 255, 1.0),
          ),
        constraints: BoxConstraints(
        minHeight: 200.0,
    ),

    )
      ],
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 12,
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              gradient: RadialGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 54, 255, 1.0)
              ]),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 12,
            ),
          ),
        ),
        Positioned(
            right: 20.0,
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 32,
            ))
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;

  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
