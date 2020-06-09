import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tab/tab1.dart';
import 'tab/tab2/tab2.dart';
import 'tab/tab3/tab3.dart';
import 'tab/tab4.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabContainer = new DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.supervised_user_circle)),
                Tab(icon: Icon(Icons.hearing)),
                Tab(icon: Icon(Icons.crop_rotate)),
                Tab(icon: Icon(Icons.message)),
              ],
              indicatorWeight: 2,
              indicatorColor: Colors.red[400],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Tab1(),
              Tab2(),
              Tab3(),
              Tab4(),
            ],
          ),
        ));

    return MaterialApp(title: "", home: tabContainer,
        // initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/tab-1': (BuildContext context) => Tab1(),
          '/tab-2': (BuildContext context) => Tab2(),
          '/tab-3': (BuildContext context) => Tab3(),
          '/tab-4': (BuildContext context) => Tab4(),
        });
  }
}

void main() => runApp(MyApp());
