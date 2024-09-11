import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/spalsh_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

  static const kHomeView = '/homeView' ;
  static const kBookDetails = '/bookDetailsView' ;
  static const searchView = '/searchView' ;
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}