import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:news_app_yassin/core/errors/failure.dart';
import 'package:news_app_yassin/core/utilies/end_points.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';
import 'package:news_app_yassin/features/home/data/repo/top_head_lines_repo/top_head_lines_repo.dart';
import'package:http/http.dart' as http;
class TopHeadLinesRepoImplementation implements TopHeadLinesRepo{
  @override
  Future<Either<Failure, List<TopHeadLineModel>>> getTopHeadLines() async{
    // TODO: implement getTopHeadLines
    try{
      var response = await http.get(Uri.parse("${EndPoints.baseUrl}${EndPoints.topHeadLines}?${EndPoints.country}=us&apiKey=${EndPoints.apiKey}"));
      var bodyJson = jsonDecode(response.body);
      List<TopHeadLineModel> topHeadLineList = [];
      if(response.statusCode == 200){
        for(var item in bodyJson["articles"]){
          TopHeadLineModel topHeadLineModel = TopHeadLineModel.fromJson(item);
          topHeadLineList.add(topHeadLineModel);
        }
        return right(topHeadLineList);
      }
      else{
        return left( ApiFailure(errorMessage: jsonDecode(response.body)["message"]));
      }
    }
    on SocketException{
      return left(NoInterNet(errorMessage: "no_internet".tr()));
    }
    catch (e){
      return left(ApiFailure(errorMessage: e.toString()));
    }
  }

}