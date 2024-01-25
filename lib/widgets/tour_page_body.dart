import 'package:bloc_state_management/bloc/tour_bloc.dart';
import 'package:bloc_state_management/widgets/tour_list_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TourPageBody extends StatelessWidget {
  const TourPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourBloc, TourState>(builder: (context, state) {
      if (state is TourInitial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is TourLoaded) {
        return Center(
          child: ListView.builder(
              itemCount: state.tourList.length,
              itemBuilder: (context, index) {
                return TourListElementWidget(tour: state.tourList[index],);
              }),
        );
      } else {
        return const Center(
          child: Text("Error!"),
        );
      }
    });
  }
}
