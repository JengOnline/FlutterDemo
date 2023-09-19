import 'package:flutter/material.dart';
import 'package:my_app/src/feature/term_condition/presentation/expansion_tile_widget.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TermCondition"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            ExpansionTileWidget(
              title: 'Term condition 1',
              initiallyExpanded: true,
            ),
            ExpansionTileWidget(title: 'Term condition 2'),
            ExpansionTileWidget(title: 'Term condition 3'),
          ],
        ));
  }
}
