import 'dart:math';
import 'package:bloc_state_management/error/custom_exception.dart';
import 'package:bloc_state_management/model/tour_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tour_event.dart';
part 'tour_state.dart';

class TourBloc extends Bloc<TourEvent, TourState> {
  TourBloc() : super(TourInitial()) {
    on<LoadTourCounter>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1)); //*
      emit(const TourLoaded(tourList: <TourModel>[]));
    });
    on<AddTour>((event, emit) {
      if (state is TourLoaded) {
        final state = this.state as TourLoaded;
        emit(
          TourLoaded(tourList: List.from(state.tourList)..add(randomTour())),
        );
      }
    });
    on<RemoveTour>((event, emit) {
      if (state is TourLoaded) {
        final state = this.state as TourLoaded;
        emit(
          TourLoaded(tourList: List.from(state.tourList)..remove(event.tour)),
        );
      }
    });
  }

  TourModel randomTour() {
    TourModel tour = TourModel.tours[Random().nextInt(4)];
    return tour;
  }

  // * DEĞİŞİM SIRASINDA BU METHODU KULLANIYORSUN
  @override
  void onChange(Change<TourState> change) {
    super.onChange(change);

    // * CURRENTSTATE şuanki durumu, aslında önceki durumu temsil ediyor.
    //print("CURRENT STATE-- ${change.currentState}");
    // * nextState sonraki durumu temsil ediyor. Yeni durumu temsil ediyor
    //print("NEXT STATE-- ${change.nextState}");
  }

  // * BURADA GEÇİŞ SIRASINDA YAPILACAK İŞLEMLERDE BU FONKSİYONU KULLANABİLİRSİN
  // * Event to State geçişi
  // * Cubitte event olmadığı için bu yok
  @override
  void onTransition(Transition<TourEvent, TourState> transition) {
    super.onTransition(transition);

    // * Burada eventi kontrol edebilirsin
    //print("TRANSITION EVENT : ${transition.event.toString()}");
    print("TRANSITION CURRENT STATE : ${transition.currentState}");
    //print("TRANSITION CURRENT STATE : ${transition.nextState}");
  }

  // ! ERROR olma durumunda bunu kullanıyorsun
  // * Burada her bloc için error yazıp hata fırlatması işlemini yapabiliriz.
  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    throw CustomException(message: "ERROR : $error");
  }
}
