import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pageOne(), _pageTwo()],
    ));
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroudImage(),
        _text()
      ],
    );
  }

  Widget _pageTwo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Welcome', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: () {
            
          },
        ),
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroudImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _text() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height:20.0),
          Text('11°', style: textStyle),
          Text('Wednesday', style: textStyle),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }
}
