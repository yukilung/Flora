import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'web/views/layout.dart';

void main() async {
  runApp(MyWeb());
}

class MyWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tree Doctor',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: Layout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
