import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandDetail extends StatelessWidget {
  final brand;
  BrandDetail({Key key, @required this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('brand ${brand}');
    return Scaffold(
        appBar: AppBar(
          title: Text("Brand Detail"),
        ),
        body: ListView(
          children: <Widget>[
            Text('Brand name ${brand['brand_name']}'),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 2 / 3,
                margin: EdgeInsets.all(12),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage('${brand['brand_logo']}')))),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 2 / 3,
                margin: EdgeInsets.all(12),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage('${brand['brand_image']}')))),
          ],
        ));
  }
}
