import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git/Bloc/Theme_Event.dart';

import '../Bloc/Theme_Bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          Switch(
            value: context.read<ThemeBloc>().state == ThemeMode.dark,
            onChanged: (value) {
              context.read<ThemeBloc>().add(ThemeChanged(value));
            },
          )
        ],
      ),
      body: Text(
        'hi',
      ),
    );
  }
}
