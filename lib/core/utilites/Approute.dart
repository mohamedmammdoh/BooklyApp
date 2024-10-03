// ignore_for_file: file_names

import 'package:booklyapp/features/Home/presentation/views/booksdetailsview.dart';
import 'package:booklyapp/features/Home/presentation/views/homeview.dart';
import 'package:booklyapp/features/Search/presentation/views/searchview.dart';
import 'package:booklyapp/features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/booksDetails',
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/searchview',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
