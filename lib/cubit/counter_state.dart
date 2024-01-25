part of 'counter_cubit.dart';

sealed class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {}


/*
final class CounterIncrement extends CounterState {
  final int counter;

  const CounterIncrement({required this.counter});

  @override
  List<Object> get props => [counter];
}

final class CounterDecrement extends CounterState {
  final int counter;

  const CounterDecrement({required this.counter});
  
  @override
  List<Object> get props => [counter];
}

*/
