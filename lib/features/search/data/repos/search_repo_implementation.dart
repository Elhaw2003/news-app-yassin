import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:news_app_yassin/core/errors/failure.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';
import 'package:news_app_yassin/features/search/data/repos/search_repo.dart';
import 'package:http/http.dart' as http;

import '../../../../core/utilies/end_points.dart';
class SearchRepoImplementation implements SearchRepo{
  // https://newsapi.org/v2/everything?q=bitcoin&apiKey=7f9e33aa93ff41328ba6eaa1696ae2c0
  @override
  Future<Either<Failure, List<TopHeadLineModel>>> getSearch({required String query}) async{

    try{
      var response = await http.get(Uri.parse("${EndPoints.baseUrl}${EndPoints.everything}?q=$query&apiKey=${EndPoints.apiKey}"));
      var bodyJson = jsonDecode(response.body);
      if(response.statusCode == 200){
        List<TopHeadLineModel> searchList = (bodyJson["articles"] as List).map((e) => TopHeadLineModel.fromJson(e)).toList();
        return right(searchList);
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