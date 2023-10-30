import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/core/provider/bloc/bloc_bloc.dart';
import 'package:my_app/src/core/provider/bloc/bloc_state.dart';
import 'package:my_app/src/feature/home/presentation/controller/text_controller.dart';
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
    return BlocProvider(
      create: (context) => AppBlocBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text("AllMenu"), actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: const Icon(
                  Icons.logout_outlined,
                )),
          )
        ]),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocConsumer<AppBlocBloc, AppState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return TextChangeController(text: state.text);
                },
              ),
            ]),
      ),
    );
  }
}
