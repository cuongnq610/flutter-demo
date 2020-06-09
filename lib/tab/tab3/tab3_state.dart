import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './tab3.dart';

class Tab3State extends State<Tab3> {
  int counter = 2;
  bool loading = false;

  void incrementCounter() {
    setState(() {
      loading = true;
    });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        counter++;
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            loading
                ? new CircularProgressIndicator()
                : new Text(
                    counter.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
