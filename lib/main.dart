import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
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
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReUsefullCard(),
              ),
              Expanded(
                child: ReUsefullCard(),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReUsefullCard(),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReUsefullCard(),
              ),
              Expanded(
                child: ReUsefullCard(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReUsefullCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
