import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_review/providers/auth_provider.dart';
import 'package:tech_review/screens/login/login_controller.dart';
import 'package:tech_review/styles.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  final _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    final dio = Provider.of<Dio>(context, listen: false);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.red,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withAlpha(5),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        offset: Offset(0, 4),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: Styles.headerLarge,
                      ),

                      SizedBox(height: 30),

                      Text("Username", style: Styles.textDefault),
                      SizedBox(height: 5),

                      _textInput(_userController),
                      SizedBox(height: 30),

                      Text("Password"),
                      SizedBox(height: 5),

                      _textInput(_passwordController),

                      SizedBox(height: 30),
                      Center(
                        child: TextButton(
                          onPressed: () => context.read<AuthProvider>().doLogin(
                            _userController.text,
                            _passwordController.text,
                            _onSuccess,
                          ),
                          child: Text("Login"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textInput(TextEditingController controller) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black.withValues(alpha: .05),
          width: 1,
        ),
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "hehe",
          fillColor: Colors.red,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }

  void _onSuccess() {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  // void _onLogin(BuildContext context) async {
  //   try {1
  //     await Navigator.pushNamedAndRemoveUntil(
  //       context,
  //       '/user',
  //       (route) => false,
  //     );
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
