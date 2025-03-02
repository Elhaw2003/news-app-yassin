import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/utilies/app_styles.dart';
import 'package:news_app_yassin/core/widgets/loading_widget.dart';
import 'package:news_app_yassin/core/widgets/spacing_widget.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';
class FirstItemTopHeadLineWidget extends StatelessWidget {
  const FirstItemTopHeadLineWidget({super.key, required this.topHeadLines});
  final List<TopHeadLineModel> topHeadLines ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.sp),
            child: CachedNetworkImage(
              imageUrl: topHeadLines[0].imageUrl ,
              placeholder: (context, url) => const LoadingWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: double.infinity,
              height: 206.h,
              fit: BoxFit.fill,
            ),
          ),
          const HeightSpacing(height: 16),
          Text(
            topHeadLines[0].title,
            style: AppTextStyles.titleNewsTextStyle,
          ),
          const HeightSpacing(height: 12),
          Row(
            children: [
              SizedBox(
                width: 120.w,
                child: Text(
                  "${topHeadLines[0].author}   .",
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.nameAndDateNews,
                ),
              ),
              Text(
                "   ${getFormattedDate(topHeadLines[0].publishedAt)}",
                style: AppTextStyles.nameAndDateNews,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
String getFormattedDate(publishedAt) {
  if (publishedAt == null) return "date_not_available".tr();
  return DateFormat('MMMM d, y').format(publishedAt!);
}