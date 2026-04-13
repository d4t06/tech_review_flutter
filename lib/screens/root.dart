import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tech_review/providers/nav_provider.dart';
import 'package:tech_review/screens/home/presentation/home_screen.dart';
import 'package:tech_review/screens/profile/presentation/profile_screen.dart';
import 'package:tech_review/styles/styles.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navProvider);

    final tabs = [
      (
        icon: Icons.home_outlined,
        selected: Icons.home,
        label: "Home",
        page: const HomeScreen(),
      ),
      (
        icon: Icons.person,
        selected: Icons.newspaper,
        label: "User",
        page: ProfileScreen(),
      ),
    ];

    final page = tabs[selectedIndex].page;

    // final isLoading = context.watch<AuthProvider>().isLoading;
    final isLoading = false;

    return isLoading
        ? const Scaffold(body: Center(child: CircularProgressIndicator()))
        : Scaffold(
            body: page,
            backgroundColor: Colors.white,
            bottomNavigationBar: NavigationBar(
              selectedIndex: selectedIndex,
              indicatorColor: context.colorScheme.primary,
              onDestinationSelected: (index) =>
                  ref.read(navProvider.notifier).setIndex(index),
              destinations: [
                for (final tab in tabs)
                  NavigationDestination(
                    icon: Icon(tab.icon),
                    selectedIcon: Icon(tab.selected),
                    label: tab.label,
                  ),
              ],
            ),
          );
  }
}
