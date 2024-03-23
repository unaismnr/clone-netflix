import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/models/downloads_model.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloadsImages();
}
