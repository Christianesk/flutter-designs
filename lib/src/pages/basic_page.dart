import 'dart:ui';

import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(), 
            _createTitle(), 
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText()
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://c4.wallpaperflare.com/wallpaper/673/18/569/landscape-mountains-sunlight-el-capitan-wallpaper-preview.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Captain', style: styleTitle),
                  SizedBox(height: 7.0),
                  Text('Yosemite National Park', style: styleSubTitle)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.phone, 'CALL'),
        _createAction(Icons.near_me, 'ROUTE'),
        _createAction(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _createText() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et nibh non mi mollis ornare eu vitae ante. Ut vitae dolor tortor. Nunc sed sapien lobortis, blandit odio a, ullamcorper erat. Sed sodales lorem nulla, ac pretium odio condimentum sed. Donec tincidunt vel justo et vulputate. Nunc eu pretium dui, vitae viverra massa. Nullam vel lorem augue. Proin ultrices malesuada tellus at euismod. Duis fringilla tortor risus, sit amet porttitor lacus malesuada nec. Nam nec leo vitae orci bibendum aliquet. Curabitur semper ante ipsum, sit amet auctor turpis consectetur sed. Fusce suscipit mi sem, in ultrices nunc vestibulum vitae. Nam vitae mollis lectus, tristique auctor quam. Etiam non luctus risus. Maecenas eu justo a nisi tincidunt consectetur id in urna. Phasellus augue sem, gravida ac nunc ultrices, volutpat mattis arcu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
