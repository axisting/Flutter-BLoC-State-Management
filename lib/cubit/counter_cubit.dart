import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);


  // * Cubit Bloc ile benzer. Cubitte event olayı yok. Direkt olarak Cubit içinde methodlarla yönetim yapıyoruz.
  // ? Bloc'da ise olay kontrolü yapıyoruz. Cubitte event olmadığı için dolayısıyla onTransition'da yok
  
}
