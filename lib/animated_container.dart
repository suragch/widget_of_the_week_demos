import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedContainerDemo(),
      ),
    );
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {

  // state variables                           <-- state
  final _myDuration = Duration(seconds: 1);
  var _myValue = Color(0xFF00BB00);
  final _myNewValue = Color(0xFF0000FF);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child:

          // Update this code                  <-- AnimatedContainer
          AnimatedContainer(
            color: _myValue,
            duration: _myDuration,
            child: SomeOtherWidget(),
          ),
        ),
        updateStateButton()
      ],
    );
  }

  Align updateStateButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: RaisedButton(
          child: Text('Update State'),
          onPressed: () {
            setState(() { //                    <-- update state
              _myValue = _myNewValue;
            });
          },
        ),
      ),
    );
  }
}

class SomeOtherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
    );
  }
}
