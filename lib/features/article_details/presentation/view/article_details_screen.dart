import 'package:flutter/material.dart';
import 'package:news_app_yassin/core/utilies/app_colors.dart';
import 'package:news_app_yassin/features/article_details/presentation/view/widgets/article_details_body.dart';
import '../../../home/data/models/top_head_line_model.dart';

class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({super.key, required this.topHeadLineModel});
  final TopHeadLineModel topHeadLineModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ArticleDetailsBody(topHeadLineModel: topHeadLineModel),
    );
  }
}