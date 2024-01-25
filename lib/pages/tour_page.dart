import 'package:bloc_state_management/bloc/tour_bloc.dart';
import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:bloc_state_management/widgets/tour_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TourPage extends StatelessWidget {
  const TourPage({super.key});

  @override
  Widget build(BuildContext context) {
    TourBloc tourBloc = TourBloc();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Turlar"),
        actions: [
          BlocBuilder<CounterCubit, int>(
            builder: (context, counter) {
              /*
              
              if (state is TourInitial) {
                return const SizedBox();
              }
              if (state is TourLoaded) {
                return Text("${state.tourList.length}");
              } else {
                return const Center(
                  child: Text("Error!"),
                );
              }
              */
              return Text("$counter");
            },
          )
        ],
        centerTitle: true,
      ),
      body: const TourPageBody(),
      floatingActionButton: BlocBuilder<TourBloc, TourState>(
        builder: (context, state) {
          return BlocBuilder<CounterCubit, int>(
            builder: (context, counter) {
              return FloatingActionButton(
                onPressed: () {
                  context
                      .read<TourBloc>()
                      .add(AddTour(tour: tourBloc.randomTour()));
                  context.read<CounterCubit>().increment();
                },
                child: const Icon(Icons.add),
              );
            },
          );
        },
      ),
    );
  }
}
