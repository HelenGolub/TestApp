import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getting started',
      home: Scaffold(
        appBar: AppBar(
          title: Text("App for Solid Software"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: TapButton(),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("Hey there",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                fontStyle: FontStyle.italic)));
  }
}

class TapButton extends StatefulWidget {
  @override
  TapButtonState createState() => TapButtonState();
}

class TapButtonState extends State<TapButton> {
  bool pressed = false;

  void toggleTap() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: new FlatButton(
          onPressed: toggleTap,
          color: pressed
              ? Colors.primaries[Random().nextInt(Colors.primaries.length)]
              : null,
          child: TextFieldWidget(),
        ),
      ),
    );
  }
}
