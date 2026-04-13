import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_review/providers/auth/auth_provider.dart';
import 'package:tech_review/screens/home/presentation/home_screen.dart';
import 'package:tech_review/screens/login/presentation/login_screen.dart';
import 'package:tech_review/screens/product_detail/presentation/product_detail_screen.dart';
import 'package:tech_review/screens/profile/presentation/profile_screen.dart';
import 'package:tech_review/screens/root.dart';
import 'package:tech_review/screens/splash.dart';

enum AppRoute { login, root, home, splash, profile, productDetail }

final goRouterProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final isSplash = state.matchedLocation == '/splash';
      final isLogin = state.matchedLocation == '/login';

      final authState = ref.read(authProvider);

      // 1. If are still initializing, stay on Splash
      if (authState.isLoading) return '/splash';

      // 2. If finished and unauthenticated, go to Login
      if (authState.user == null && state.matchedLocation != '/login') {
        return '/login';
      }

      // 3. If authenticated and on Splash or Login, go Home
      if (authState.user != null && (isSplash || isLogin)) {
        return '/root';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',

        name: AppRoute.splash.name,

        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: '/home',

        name: AppRoute.home.name,

        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/root',
        name: AppRoute.root.name,
        builder: (context, state) => RootScreen(),
      ),
      GoRoute(
        path: '/login',
        name: AppRoute.login.name,

        builder: (context, state) => LoginScreen(),
      ),

      GoRoute(
        path: '/profile',
        name: AppRoute.profile.name,

        builder: (context, state) => ProfileScreen(),
      ),

      GoRoute(
        path: '/product/:id',
        name: AppRoute.productDetail.name,
        builder: (context, state) =>
            ProductDetailScreen(id: state.pathParameters['id']!),
      ),
    ],
  );

  ref.listen(authProvider, (_, __) => router.refresh());

  return router;
});
