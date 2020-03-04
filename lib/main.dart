import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShaderMask in Flutter'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: ShaderMask(
        blendMode: BlendMode.srcATop,
        shaderCallback: (Rect bounds) {
          return RadialGradient(colors: <Color>[
            Colors.yellowAccent,
            Colors.redAccent,
            Colors.blueAccent,
            Colors.greenAccent
          ], center: Alignment.center, radius: 1, tileMode: TileMode.mirror)
              .createShader(bounds);
        },
        child: Text(
          'Cause you are burnt with the brightest flame',
          style: TextStyle(fontSize: 30),
        ),
      )),
    );
  }
}
