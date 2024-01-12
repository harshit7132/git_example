import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git/Bloc/Theme_Bloc.dart';
import 'package:git/Screens/homePage.dart';
import 'package:git/appTheme/AppTheme.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, state) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            themeMode: state,
            darkTheme: darkTheme,
            home: const HomePage());
      },
    );
  }
}
