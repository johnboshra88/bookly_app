import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemntation.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_book_cubit.dart';
import 'package:bookly/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Ensure you import this
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBookCubit(getIt.get<HomeRepoImplemntation>())
                ..fechFeatureBook(),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBooksCubit(getIt.get<HomeRepoImplemntation>())
                ..fechnewseteBook(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
