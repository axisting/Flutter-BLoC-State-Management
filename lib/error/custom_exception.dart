class CustomException  implements Exception{
  final String message;
  CustomException({this.message = "Error!"});
}


class TourBlocException implements CustomException {
  @override
  String get message => message;

}