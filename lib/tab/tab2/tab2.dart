import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './tab2_state.dart';

class Tab2 extends StatefulWidget {
  const Tab2(
      {Key key,
      this.color = const Color(0xFFFFE306),
      this.child,
      this.test = 'asnkdvhgsahdsajhdsadas'})
      : super(key: key);

  final Color color;
  final Widget child;
  final String test;

  Tab2State createState() => Tab2State();
}
