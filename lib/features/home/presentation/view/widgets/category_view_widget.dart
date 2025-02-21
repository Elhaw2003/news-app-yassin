import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/utilies/app_colors.dart';
import 'package:news_app_yassin/core/utilies/app_styles.dart';
class CategoryViewWidget extends StatelessWidget {
  const CategoryViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 32.w),
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 6.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(56.sp),
                border: Border.all(color: AppColors.lightBlueColor.withOpacity(0.1),width: 1.sp),
              ),
              child: Text(
                "travel".tr(),
                style: AppTextStyles.categoryTextStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 6.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(56.sp),
                border: Border.all(color: AppColors.lightBlueColor.withOpacity(0.1),width: 1.sp),
              ),
              child: Text(
                "technology".tr(),
                style: AppTextStyles.categoryTextStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 6.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(56.sp),
                border: Border.all(color: AppColors.lightBlueColor.withOpacity(0.1),width: 1.sp),
              ),
              child: Text(
                "travel".tr(),
                style: AppTextStyles.categoryTextStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 6.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(56.sp),
                border: Border.all(color: AppColors.lightBlueColor.withOpacity(0.1),width: 1.sp),
              ),
              child: Text(
                "travel".tr(),
                style: AppTextStyles.categoryTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
