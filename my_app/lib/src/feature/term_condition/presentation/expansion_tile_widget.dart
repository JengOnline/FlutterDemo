import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget(
      {super.key, required this.title, this.initiallyExpanded = false});

  final String title;
  final bool initiallyExpanded;

  @override
  ExpansionTileWidgetState createState() => ExpansionTileWidgetState();
}

class ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          initiallyExpanded: widget.initiallyExpanded,
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
