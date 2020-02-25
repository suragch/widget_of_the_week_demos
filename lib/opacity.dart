import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(child: SomeWidget()),
        ),
      ),
    );
  }
}

class SomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgets = [
      MyWidget(Colors.green),
      Opacity(
        opacity: 0.0,
        child: MyWidget(Colors.blue),
      ),
      MyWidget(Colors.yellow),
    ];

    return Column(
      children: widgets,
    );
  }
}

class MyWidget extends StatelessWidget {
  final Color color;

  MyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 50,
      height: 50,
      color: color,
    );
  }
}
