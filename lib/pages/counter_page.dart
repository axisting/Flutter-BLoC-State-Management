import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:bloc_state_management/widgets/tour_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// * Bu sayfada sadece sayaçlı bir örnek işleniyor. İstersen main.dart içinde CounterPage'i çağırabilirsin.
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          actions: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, counter) {
                return Text("$counter");
              },
            )
          ],
          centerTitle: true,
        ),
        body: const TourPageBody(), //CounterPageBody(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 16,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: const Icon(Icons.remove),
            )
          ],
        ));
  }
}
