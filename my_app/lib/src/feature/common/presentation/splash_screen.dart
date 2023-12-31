import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/src/core/store/auth_store.dart';
import 'package:my_app/src/feature/home/presentation/home_screen.dart';
import 'package:my_app/src/feature/login/presentation/login_screen.dart';

class SplashScreent extends StatefulWidget {
  const SplashScreent({Key? key}) : super(key: key);

  @override
  SplashScreentState createState() => SplashScreentState();
}

class SplashScreentState extends State<SplashScreent> {
  @override
  void initState() {
    super.initState();
    startTime();
    loadIsLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  String? isLogin;

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    if (isLogin == 'true') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    }
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SizedBox(
                width: 250,
                child: Image.asset(
                  "assets/images/flutter_logo.png",
                  scale: 1,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const Text(
              "Splash Screen",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }

  void loadIsLogin() async {
    await AuthStore().getIsLogin().then((value) => setState(() {
          if (value != null) {
            isLogin = value;
          }
        }));
  }
}
