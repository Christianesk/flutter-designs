

import 'package:designs/src/pages/basic_page.dart';
import 'package:designs/src/pages/button_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'basic': (BuildContext context) => BasicPage(),
    'scroll': (BuildContext context) => ScrollPage(),
    'buttom': (BuildContext context) => ButtonPage(),
  };
}