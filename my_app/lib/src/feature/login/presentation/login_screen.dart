import 'package:flutter/material.dart';
import 'package:my_app/src/feature/term_condition/presentation/term_condition_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              child: Image.asset(
                "assets/images/flutter_login_icon.png",
                scale: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Username'),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: flatButtonStyle,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const TermCondition(),
                ));
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
}
