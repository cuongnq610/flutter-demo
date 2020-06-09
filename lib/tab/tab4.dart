import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/model/brand_model.dart';
import 'package:provider/provider.dart';

import '../model/brand_model.dart';

class Tab4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<BrandModel>(
      create: (context) => BrandModel(),
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green[200],
                child: Consumer<BrandModel>(
                  builder: (context, mymodel, child) {
                    return RaisedButton(
                      child: Text('Do something'),
                      onPressed: () {
                        mymodel.setBrandName('brand name test');
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(35),
                color: Colors.blue[200],
                child: Consumer<BrandModel>(
                  builder: (context, mymodel, child) {
                    return Text(mymodel.brand_name);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
