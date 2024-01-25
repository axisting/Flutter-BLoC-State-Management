part of 'tour_bloc.dart';

sealed class TourState extends Equatable {
  const TourState();

  @override
  List<Object> get props => [];
}

final class TourInitial extends TourState {}

final class TourLoaded extends TourState {
  final List<TourModel> tourList;

  const TourLoaded({required this.tourList});

  @override
  // TODO: implement props
  List<Object> get props => [tourList];
}
