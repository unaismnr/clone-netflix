import 'package:netflix_clone/core/consts.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "${kBaseUrl}popular?api_key=$apiKey";
}
