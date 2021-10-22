import 'package:flutter/material.dart';

import 'package:app_designs/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_design',
      routes: {'basic_design': (_) => BasicDesignScreen()},
    );
  }
}
