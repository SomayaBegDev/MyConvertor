import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ConvertorProvideor.dart';

class Convertor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConvertorProvidor convProv = Provider.of<ConvertorProvidor>(context);
    return Container(
      constraints: BoxConstraints(minWidth: 200, maxHeight: 300),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.pinkAccent, Colors.pink]),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.all(5.5),
      margin: EdgeInsets.fromLTRB(15, 50, 15, 50),
      child: Center(
        child: CupertinoPicker(
            itemExtent: 30,
            onSelectedItemChanged: (index) {
              convProv
                  .setFromUnit(convProv.getSelectedMap().keys.toList()[index]);
            },
            backgroundColor: Colors.transparent,
            children:
                convProv.getSelectedMap().keys.map((f) => Text(f)).toList()),
      ),
    );
  }
}

class Convertor2 extends StatelessWidget {
  Map selMap;
  @override
  Widget build(BuildContext context) {
    ConvertorProvidor convProv = Provider.of<ConvertorProvidor>(context);
    return Container(
      constraints: BoxConstraints(minWidth: 200, maxHeight: 300),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.pinkAccent, Colors.pink]),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.all(5.5),
      margin: EdgeInsets.fromLTRB(15, 50, 15, 50),
      child: Center(
        child: CupertinoPicker(
            itemExtent: 30,
            onSelectedItemChanged: (index) {
              convProv
                  .setToUnit(convProv.getSelectedMap().keys.toList()[index]);
            },
            backgroundColor: Colors.transparent,
            children:
                convProv.getSelectedMap().keys.map((f) => Text(f)).toList()),
      ),
    );
  }
}
