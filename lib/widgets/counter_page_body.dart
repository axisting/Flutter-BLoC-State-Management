import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPageBody extends StatelessWidget {
  const CounterPageBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, counter) {
        return Center(
          child: Text(
            "$counter",
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
