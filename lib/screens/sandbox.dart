import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  Sandbox({Key key}) : super(key: key);

  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 20.0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => setState(() => _margin = 50),
              child: Text('animate margin'),
            ),
            RaisedButton(
              onPressed: () => setState(() => _margin = 1),
              child: Text('animate margin'),
            ),
            RaisedButton(
              onPressed: () => setState(() => _color = Colors.amber),
              child: Text('animate color'),
            ),
          ],
        ),
      ),
    );
  }
}
