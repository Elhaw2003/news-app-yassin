import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/utilies/app_styles.dart';
import 'package:news_app_yassin/core/widgets/loading_widget.dart';
import 'package:news_app_yassin/core/widgets/spacing_widget.dart';
import 'package:news_app_yassin/features/home/data/models/top_head_line_model.dart';

class TopHeadLineWidget extends StatelessWidget {
  const TopHeadLineWidget({super.key, this.image});
  final String? image;
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
              imageUrl: image ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7x-ooxKOq566-LbXBxqJiyOR-jgzYDfMx7w&s",
              placeholder: (context, url) => const LoadingWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: double.infinity,
              height: 206.h,
              fit: BoxFit.fill,
            ),
          ),
          const HeightSpacing(height: 16),
          Text(
            "sajgfhgdhfsa",
            style: AppTextStyles.titleNewsTextStyle,
          ),
          const HeightSpacing(height: 12),
          Text(
            "sajgfhgdhfsa",
            style: AppTextStyles.nameAndDateNews,
          ),
        ],
      ),
    );
  }
}
