import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/features/article_details/presentation/view/widgets/details_item_widget.dart';
import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../../../home/data/models/top_head_line_model.dart';
class ArticleDetailsBody extends StatelessWidget {
  const ArticleDetailsBody({super.key, required this.topHeadLineModel});
  final TopHeadLineModel topHeadLineModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          child: Hero(
            tag: topHeadLineModel.imageUrl,
            child: CachedNetworkImage(
              imageUrl: topHeadLineModel.imageUrl ,
              placeholder: (context, url) => const LoadingWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: double.infinity,
              height: 316.h,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 200,
          child: DetailsItemWidget(topHeadLineModel: topHeadLineModel),
        ),
        Positioned(
          left: 10.w,
          top: 20.h,
          child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.purple,
              ),
          ),
        ),
      ],
    );
  }
}
