import 'package:go_router/go_router.dart';
import 'package:social_media_app/socail_media_app/presantation/pages/auth/main_auth/main_auth.dart';
import 'package:social_media_app/socail_media_app/presantation/pages/auth/register/register.dart';
import 'package:social_media_app/socail_media_app/presantation/widgets/base_page.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BasePage(content: MainAuthPage()),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const BasePage(content: RegisterPage()),
    ),
  ],
);
