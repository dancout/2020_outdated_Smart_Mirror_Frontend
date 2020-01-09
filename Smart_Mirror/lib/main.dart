import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Mirror',
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
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    num cols = 2;
    num rows = 3;

    return Scaffold(
      body: Center(
        child: Wrap(
          // spacing: 8.0, // gap between adjacent chips
          // runSpacing: 4.0, // gap between lines
          children: buildTiles(height, width, rows, cols),
        ),
      ),
    );
  }
}

buildTiles(num height, num width, num rows, num cols) {
  List<Widget> list = [];
  for (num i = 0; i < rows * cols; i++) {
    list.add(Tile(
      tileWidget: Text('blah'),
      height: height / rows,
      width: width / cols,
    ));
  }

  return list;
}

class Tile extends StatefulWidget {
  Tile({Key key, this.tileWidget, this.width, this.height}) : super(key: key);

  final Widget tileWidget;
  final num width;
  final num height;

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: widget.tileWidget);
  }
}
