import 'package:flutter/material.dart';
import 'package:my_app/src/core/provider/profile_provider.dart';
import 'package:my_app/src/feature/home/presentation/home_screen.dart';
import 'package:my_app/src/feature/term_condition/presentation/expansion_tile_widget.dart';
import 'package:provider/provider.dart';

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
          children: [
            const ExpansionTileWidget(
              title: 'Term condition 1',
              initiallyExpanded: true,
            ),
            const ExpansionTileWidget(title: 'Term condition 2'),
            const ExpansionTileWidget(title: 'Term condition 3'),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ChangeNotifierProvider<ProfileProvider>(
                      create: (context) => ProfileProvider(),
                      child: const HomeScreen()),
                ));
              },
              child: const Text('Submit'),
            )
          ],
        ));
  }
}
