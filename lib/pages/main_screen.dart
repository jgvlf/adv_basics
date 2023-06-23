import 'package:adv_basics/pages/home.dart';
import 'package:adv_basics/pages/questions_screen.dart';
import 'package:adv_basics/utils/animations/no_page_transitions_builder.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            for (final platform in TargetPlatform.values)
              platform: const NoPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/quiz': (context) => const QuestionsScreen(),
      },
    );
  }
}
