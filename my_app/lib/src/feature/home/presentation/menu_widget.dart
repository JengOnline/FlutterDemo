import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 250,
        child: ColoredBox(
          color: Colors.black,
          child: Text("data"),
        ));
  }
}
