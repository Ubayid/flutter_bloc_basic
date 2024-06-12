// ignore_for_file: unused_import

import 'package:bloc_basic/counter_page.dart';
import 'package:bloc_basic/sample_flutter_bloc/bloc/new_counter_bloc.dart';
import 'package:bloc_basic/sample_flutter_bloc/new_counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const NewCounterPage(),
      ),
    );
  }
}