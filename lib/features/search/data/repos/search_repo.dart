import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../home/data/models/top_head_line_model.dart';

abstract class SearchRepo{

  Future<Either<Failure, List<TopHeadLineModel>>> getSearch({required String query});
}