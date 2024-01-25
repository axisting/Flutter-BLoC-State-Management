import 'package:bloc_state_management/bloc/tour_bloc.dart';
import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:bloc_state_management/pages/tour_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => TourBloc()..add(LoadTourCounter()))
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const TourPage(),  // CounterPage(),
      ),
    );
  }
}
