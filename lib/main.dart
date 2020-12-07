import 'dart:io';
import 'package:designs/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: ( Platform.isAndroid ) ? Colors.transparent : Colors.white,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'buttom',
      routes: getApplicationRoutes(),
    );
  }
}