import 'package:dartz/dartz.dart';
import 'package:news_app_yassin/core/errors/failure.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';

abstract class TopHeadLinesRepo {
Future<Either<Failure,List<TopHeadLineModel>>> getTopHeadLines({required String category});
}