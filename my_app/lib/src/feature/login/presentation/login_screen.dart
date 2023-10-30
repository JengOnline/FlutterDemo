import 'package:flutter/material.dart';
import 'package:my_app/src/core/store/auth_store.dart';
import 'package:my_app/src/feature/common/function/alert_dialog_function.dart';
import 'package:my_app/src/feature/term_condition/presentation/term_condition_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            TextField(
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
                controller: usernameController),
            const SizedBox(
              height: 20,
            ),
            TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
                controller: passwordController),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: flatButtonStyle,
              onPressed: () {
                handleValidateLogin(context);
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

  handleValidateLogin(BuildContext context) {
    if (usernameController.text == "Sophon" &&
        passwordController.text == "Ju") {
      //for test write file (token)
      AuthStore().setIsLogin();

      //navigate
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => const TermCondition(),
      ));
    } else {
      AlertDialogHandle().showDialog(
          context, "Login Error", "An unexception error occurred", "OK");
    }
  }
}
