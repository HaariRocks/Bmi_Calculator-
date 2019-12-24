import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: InputPage(),
      ),
    );
  }
}

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
