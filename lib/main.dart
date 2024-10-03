import 'package:booklyapp/core/utilites/%20%20%20constants.dart';
import 'package:booklyapp/core/utilites/Approute.dart';
import 'package:booklyapp/features/Home/data/repos/homerepo_imp.dart';
import 'package:booklyapp/features/Home/presentation/manager(viewmodel)/Featuredbooks_cubit/featuredbooks_cubit.dart';
import 'package:booklyapp/features/Home/presentation/manager(viewmodel)/Newestbooks_cubit/newestbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
              FeaturedbooksCubit(HomeRepo_imp())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestbooksCubit(HomeRepo_imp())..fetchNewestedBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
