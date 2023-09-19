import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key, required this.title});

  final String title;

  @override
  ExpansionTileWidgetState createState() => ExpansionTileWidgetState();
}

class ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Text(widget.title),
          subtitle: const Text('click for detail'),
          children: const <Widget>[
            ListTile(title: Text('detail ')),
          ],
        ),
      ],
    );
  }
}
