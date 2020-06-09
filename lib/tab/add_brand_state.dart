import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './add_brand.dart';

class AddBrandState extends State<AddBrand> {
  String brand_name = '';
  String brand_key = '';
  var txtBrandKey = TextEditingController();

  void _changeBrandName(String brandName) {
    print('brand name ${brandName}');
    setState() {
      brand_name = brandName;
      brand_key = brandName.split(" ").join('-');
    }

    txtBrandKey.text = brandName.split(" ").join('-');
  }

  void _changeBrandKey(String brandKey) {
    print('brand name ${brandKey}');
    setState() {
      brand_key = brandKey;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Brand"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            TextField(
              obscureText: false,
              onChanged: _changeBrandName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Brand name',
              ),
            ),
            TextField(
              obscureText: false,
              onChanged: _changeBrandKey,
              controller: txtBrandKey,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Brand key',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
