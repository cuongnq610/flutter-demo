import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './tab2.dart';
import '../add_brand.dart';
import '../brand_detail.dart';

class Tab2State extends State<Tab2> {
  double _size = 1;
  var listBrand = [];

  _fetchData() async {
    var url =
        'https://brand.spify.io/r3st/api/v1/shopify-brand-brand-details/get-list-brands-by-name/lamttq2.myshopify.com?limit=10&page=1&start=0';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        // listBrand = jsonDecode(response.body)['data']['docs'];
        listBrand = jsonDecode(response.body)['data']['docs'];
      });
    }
  }

  _buildItem(context, int index) {
    print('index ${context}');
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BrandDetail(brand: listBrand[index])));
        // print(listBrand[index]);
      },
      child: Container(
        decoration:
            new BoxDecoration(border: Border.all(width: 1, color: Colors.red)),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(4),
        child: Row(
          children: <Widget>[
            Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 12),
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            '${listBrand[index]['brand_logo']}')))),
            Text('${listBrand[index]['brand_name']}')
          ],
        ),
      ),
    );
  }

  _openFormAddBrand() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddBrand()));
  }

  @override
  void initState() {
    print('Init state ${widget.test}');
    // TODO: implement initState
    super.initState();
    _fetchData();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("Did change dependencies");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void didUpdateWidget(Tab2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("Did update widget");
  }

  void grow() {
    setState(() {
      _size += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('list brand ${listBrand}');
    return Scaffold(
      body: listBrand.length > 0
          ? ListView.builder(
              itemCount: listBrand.length,
              itemBuilder: (context, index) {
                return _buildItem(context, index);
              },
            )
          : Text('No brand'),
      floatingActionButton: FloatingActionButton(
        onPressed: _openFormAddBrand,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
