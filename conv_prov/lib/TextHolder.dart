import 'package:flutter/material.dart';
import 'ConvertorProvideor.dart';
import 'package:provider/provider.dart';

class TextHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConvertorProvidor convProv = Provider.of<ConvertorProvidor>(context);
    return Container(
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
      child: TextField(
        onChanged: (value) => convProv.setValue(value),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
