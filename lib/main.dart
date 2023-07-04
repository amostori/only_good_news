import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:only_good_news/core/constants/palette.dart';
import 'package:only_good_news/features/show_news/presentation/news_cubit/news_cubit.dart';
import 'package:only_good_news/services_locator.dart';
import 'package:only_good_news/text_cubit/text_cubit.dart';
import 'package:only_good_news/text_page.dart';
import 'features/show_news/presentation/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme:
              const ColorScheme.light().copyWith(secondary: Palette.deepBlue),
          useMaterial3: true,
        ),
        // home: const HomePage(),
        home: const HomePage(),
      ),
    );
  }
}
