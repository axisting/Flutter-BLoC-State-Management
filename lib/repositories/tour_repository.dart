import 'dart:math';

import 'package:bloc_state_management/model/tour_model.dart';

class TourRepository {

  TourModel randomTour() {
    TourModel tour = TourModel.tours[Random().nextInt(4)];
    return tour;
  }
}