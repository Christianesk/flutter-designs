

import 'package:designs/src/pages/basic_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'basic': (BuildContext context) => BasicPage(),
  };
}