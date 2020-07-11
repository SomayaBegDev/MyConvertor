import 'package:flutter/material.dart';

import 'Convertor.dart';
import 'Result.dart';
import 'TextHolder.dart';

class ConvUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Convertor(),
              ),
              Expanded(
                child: TextHolder(),
              ),
              Expanded(
                child: Convertor2(),
              ),
            ],
          ),
          Expanded(
            child: Result(),
          )
        ],
      ),
    );
  }
}
