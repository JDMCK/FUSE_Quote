import 'package:flutter/material.dart';
import 'package:fuse_quote/screens/loading.dart';
import 'package:fuse_quote/screens/home.dart';
import 'package:fuse_quote/screens/edit.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'FUSE Quote',
        theme: ThemeData(primaryColor: Color.fromARGB(255, 58, 154, 214)),
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/edit': (context) => Edit()
        }),
  );
}
