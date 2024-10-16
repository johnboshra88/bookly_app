import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presenation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeview = '/homeView';
  static const Kbookdetailsview = '/bookDetailsview';
  static const ksearchview = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Kbookdetailsview,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: ksearchview,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
