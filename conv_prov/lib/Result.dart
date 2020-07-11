import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ConvertorProvideor.dart';

class Result extends StatelessWidget {
  @override
  String result;
  Result({this.result});
  @override
  Widget build(BuildContext context) {
    ConvertorProvidor convProv = Provider.of<ConvertorProvidor>(context);
    return Center(
      child: Container(
        child: Center(
          child: Text(convProv.result),
        ),
      ),
    );
  }
}
