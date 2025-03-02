import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/article_item_widget.dart';
import '../../../../../core/utilies/app_styles.dart';
import '../../../../../core/widgets/spacing_widget.dart';
class CustomArticleViewWidget extends StatelessWidget {
  const CustomArticleViewWidget({super.key, required this.topHeadLineList});
  final List<TopHeadLineModel> topHeadLineList ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: topHeadLineList.length,
        separatorBuilder: (context, index) => const HeightSpacing(height: 24),
        itemBuilder: (context, index) {
          return topHeadLineList.isEmpty ? Center(child: Text("no_results_found".tr() ,style: AppTextStyles.titleNewsTextStyle)): ArticleItemWidget(topHeadLineModel: topHeadLineList[index]);
        },
      ),
    );
  }
}