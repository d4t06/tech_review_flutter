import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_review/providers/go_router_provivder.dart';
import 'package:tech_review/screens/login/logic/login_controller.dart';
import 'package:tech_review/styles.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      Text("Login", textAlign: TextAlign.center),

                      if (ref.watch(loginProvider).errorMessage != null)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ref
                                .watch(loginProvider)
                                .errorMessage!, // Use ! because we checked for null
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),

                      SizedBox(height: 30),

                      Text("Username"),
                      SizedBox(height: 5),

                      _textInput(_userController),
                      SizedBox(height: 30),

                      Text("Password"),
                      SizedBox(height: 5),

                      _textInput(_passwordController),

                      SizedBox(height: 30),
                      Center(
                        child: TextButton(
                          onPressed: () async {
                            final success = await ref
                                .read(loginProvider.notifier)
                                .login(
                                  _userController.text,
                                  _passwordController.text,
                                );

                            if (!context.mounted || !success) {
                              return;
                            }

                            if (success) {
                              context.goNamed(AppRoute.root.name);
                            }
                          },
                          child: Text(
                            ref.watch(loginProvider).isFetching
                                ? "Loading"
                                : "Login",
                          ),
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
}
