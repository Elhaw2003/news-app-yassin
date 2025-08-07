import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_styles.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../home/data/models/top_head_line_model.dart';
import '../../../../home/presentation/view/widgets/first_item_top_head_line_widget.dart';

class DetailsItemWidget extends StatelessWidget {
  const DetailsItemWidget({super.key, required this.topHeadLineModel});
  final TopHeadLineModel topHeadLineModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
        color: AppColors.white,
      ),
      width: 430.w,
      height: 530.h,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 32.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpacing(height: 24),
              Text(
                topHeadLineModel.title,
                style: AppTextStyles.titleNewsTextStyle,
              ),
              const HeightSpacing(height: 16),
              Row(
                children: [
                  SizedBox(
                    width: 120.w,
                    child: Text(
                      "${topHeadLineModel.author} .",
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.nameAndDateNews,
                    ),
                  ),
                  Text(
                    getFormattedDate(topHeadLineModel.publishedAt),
                    style: AppTextStyles.nameAndDateNews,
                  ),
                ],
              ),
              const HeightSpacing(height: 24),
              Text(
                topHeadLineModel.description,
                style: AppTextStyles.descriptionStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
