import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          textTheme: TextTheme(
              bodyText1: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 10.0))),
      child: Column(
        children: [
          _Banner(),
          _Toolbar(),
        ],
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Color.fromRGBO(27, 46, 145, 1),
      child: Image.network(
        'https://salt.tikicdn.com/ts/banner/16/13/8e/17271f3f5755a8888302b074d4520d6b.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class _Toolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blue,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                FittedBox(
                  child: Text(
                    'HUYKI',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  fit: BoxFit.fitHeight,
                ),
                Image.asset('image/icon/logo-now.png', fit: BoxFit.contain),
                Expanded(
                  child: _SearchBar(),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.black,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
//                suffix: RaisedButton(
//                  child: Text('Tim kiem'),
//                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
