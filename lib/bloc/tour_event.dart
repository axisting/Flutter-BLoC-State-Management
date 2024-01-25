part of 'tour_bloc.dart';

sealed class TourEvent extends Equatable {
  const TourEvent();

  @override
  List<Object> get props => [];
}

class LoadTourCounter extends TourEvent {}

class AddTour extends TourEvent {
  final TourModel tour;

  const AddTour({required this.tour});

  @override
  List<Object> get props => [tour];



}

class RemoveTour extends TourEvent {
  final TourModel tour;

  const RemoveTour({required this.tour});

  @override
  List<Object> get props => [tour];
}
