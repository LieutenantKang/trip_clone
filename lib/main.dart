import 'package:flutter/material.dart';
import 'package:tripclone/pages/setting_page.dart';
import 'package:tripclone/const/material_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip.com',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: SettingPage(),
    );
  }
}