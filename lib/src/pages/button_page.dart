import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';


class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _buttonsRounded()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        selectedItemColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,size: 30.0),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp,size: 30.0),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle,size: 30.0),
            label: ''
          )
        ],
      ),
    );
  }

  Widget _backgroundApp() {

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final boxPink = Transform.rotate(
      angle: -pi /5.0,
      child: Container(
        height: 380.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]
        )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -100,
          left: -55,
          child: boxPink,
        )
      ],
    );
  }

  Widget _titles() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',style: TextStyle(color: Colors.white,fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction in to a particular category.',style: TextStyle(color: Colors.white,fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _buttonsRounded() {

    return Table(

      children: <TableRow>[    
        TableRow(
          children: <Widget>[
            _createButtonRounded(Colors.blue,Icons.border_all, 'General'),
            _createButtonRounded(Colors.purpleAccent,Icons.directions_bus, 'Bus')
          ]
        ),
        TableRow(
          children: <Widget>[
            _createButtonRounded(Colors.pinkAccent,Icons.shop, 'Buy'),
            _createButtonRounded(Colors.orange,Icons.insert_drive_file, 'File')
          ]
        ),
        TableRow(
          children: <Widget>[
            _createButtonRounded(Colors.blueAccent,Icons.movie_filter, 'Entertaiment'),
            _createButtonRounded(Colors.green,Icons.cloud, 'Grocery')
          ]
        ),
        TableRow(
          children: <Widget>[
            _createButtonRounded(Colors.red,Icons.collections, 'Photos'),
            _createButtonRounded(Colors.teal,Icons.help_outline, 'Help')
          ]
        )
      ],
    );

  }

  Widget _createButtonRounded( Color color, IconData icon, String text) {

    return Container(
      height: 180.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.70),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ),
              Text(text, style: TextStyle(color: color)),
              SizedBox(height: 5.0)
            ],
          ),
        ),
      ),
    );
  }
}