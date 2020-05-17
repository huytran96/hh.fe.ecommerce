import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final Widget a = Flexible(
    flex: 1,
    child: Column(
      children: <Widget>[
        Expanded(
          child: FittedBox(
            child: Row(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  child: Icon(Icons.dashboard),
                )
              ],
            ),
          ),
        ),
        Expanded(child: Text('Danh mục'))
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
//      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[a, a, a, a, a],
      ),
    );
  }
}
