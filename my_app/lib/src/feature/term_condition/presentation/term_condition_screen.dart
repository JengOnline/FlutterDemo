import 'package:flutter/material.dart';
import 'package:my_app/src/feature/term_condition/presentation/expansion_tile_widget.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ExpansionTileWidget(title: 'Term condition 1'),
        ExpansionTileWidget(title: 'Term condition 2'),
        ExpansionTileWidget(title: 'Term condition 3'),
      ],
    ));
  }
}
