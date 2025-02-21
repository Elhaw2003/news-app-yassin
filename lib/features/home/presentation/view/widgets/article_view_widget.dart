import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilies/app_styles.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ArticleViewWidget extends StatelessWidget {
  const ArticleViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const HeightSpacing(height: 24),
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 32.w),
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
                        "sajgfhglkkdhfsa",
                        style: AppTextStyles.titleNewsTextStyle,
                      ),
                    ),
                    const HeightSpacing(height: 4),
                    Text(
                      "sajgfhgdhfsa",
                      style: AppTextStyles.nameAndDateNews,
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.sp),
                  child: CachedNetworkImage(
                    imageUrl:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7x-ooxKOq566-LbXBxqJiyOR-jgzYDfMx7w&s",
                    placeholder: (context, url) => const LoadingWidget(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    width: 112.w,
                    height: 80.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
