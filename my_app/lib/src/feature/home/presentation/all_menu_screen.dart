import 'package:flutter/material.dart';
import 'package:my_app/src/feature/home/presentation/menu_widget.dart';
import 'package:my_app/src/feature/login/presentation/login_screen.dart';

class AllMenu extends StatefulWidget {
  const AllMenu({Key? key}) : super(key: key);

  @override
  AllMenuState createState() => AllMenuState();
}

class AllMenuState extends State<AllMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AllMenu"), actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const LoginScreen();
                }), (r) {
                  return false;
                });
              },
              child: const Icon(
                Icons.logout_outlined,
              )),
        )
      ]),
      body: Column(children: [
        const MenuWidget(),
      ]),
    );
  }
}
