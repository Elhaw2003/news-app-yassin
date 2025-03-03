import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';
import 'package:news_app_yassin/features/home/presentation/view/widgets/first_item_top_head_line_widget.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/utilies/app_styles.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({super.key, required this.topHeadLineModel,});

  final TopHeadLineModel topHeadLineModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).pushNamed(AppRoutes.articleDetailsScreen,extra: topHeadLineModel);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 238.w,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    topHeadLineModel.title,
                    style: AppTextStyles.titleNewsTextStyle,
                  ),
                ),
                const HeightSpacing(height: 4),
                SizedBox(
                  width: 200.w,
                  child: Text(
                    topHeadLineModel.author,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTextStyles.nameAndDateNews,
                  ),
                ),
                const HeightSpacing(height: 5),
                Text(
                  getFormattedDate(topHeadLineModel.publishedAt),
                  style: AppTextStyles.nameAndDateNews,
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.sp),
              child: CachedNetworkImage(
                imageUrl: topHeadLineModel.imageUrl,
                placeholder: (context, url) => const LoadingWidget(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 112.w,
                height: 80.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
