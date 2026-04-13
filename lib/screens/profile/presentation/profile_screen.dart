import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tech_review/components/default_app_bar.dart';
import 'package:tech_review/providers/auth/auth_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.read(authProvider);

    return Scaffold(
      appBar: DefaultAppBar(),
      body: authState.user == null
          ? ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text('Login'),
            )
          : Container(
              decoration: BoxDecoration(color: Colors.amber[100]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Username: ${authState.user!.username}'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: ref.read(authProvider.notifier).logOut,
                    child: Text('Logout'),
                  ),
                ],
              ),
            ),
    );
  }
}
