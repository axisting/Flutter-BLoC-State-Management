import 'package:bloc_state_management/bloc/tour_bloc.dart';
import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:bloc_state_management/model/tour_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TourListElementWidget extends StatelessWidget {
  final TourModel tour;
  const TourListElementWidget({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: tour.image),
      title: Text(tour.name),
      subtitle: Text(
        tour.detail,
        maxLines: 2,
      ),
      trailing: IconButton(
          onPressed: () {
            context.read<TourBloc>().add(RemoveTour(tour: tour));
            context.read<CounterCubit>().decrement();
          },
          icon: const Icon(
            Icons.remove_circle,
            color: Colors.red,
          )),
    );
  }
}
