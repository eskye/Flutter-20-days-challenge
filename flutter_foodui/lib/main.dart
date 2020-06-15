import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfoodui/pages/starterPage.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(fontFamily: 'Roboto'),
    debugShowCheckedModeBanner: false,
    home: StarterPage(),
  )
);