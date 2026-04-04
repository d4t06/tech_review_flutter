import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_review/components/default_app_bar.dart';
import 'package:tech_review/providers/auth_provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppBar(), body: _renderUserInfo(context));
  }

  Widget _renderUserInfo(BuildContext context) {
    final user = context.watch<AuthProvider>().user;

    if (user == null) {
      return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/login'),
        child: Text('Login'),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.amber[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Username: ${user.username}'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<AuthProvider>().doLogout();
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
