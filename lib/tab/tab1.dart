import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(children: <Widget>[
      Container(
        padding: EdgeInsets.all(12),
        child: TextField(
          obscureText: false,
          decoration:
              InputDecoration(border: OutlineInputBorder(), hintText: 'Search'),
        ),
      ),
      Container(
        padding: EdgeInsets.all(12),
        child: Text(
          "Search Result (1)",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
          padding: EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              Container(
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg")))),
              Expanded(
                flex: 7,
                child: Text("Description"),
              ),
              Expanded(child: Text("Time")),
            ],
          )),
    ]);
  }
}
