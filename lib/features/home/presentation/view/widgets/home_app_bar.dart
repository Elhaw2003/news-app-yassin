import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_yassin/core/utilies/app_colors.dart';
import 'package:news_app_yassin/core/utilies/app_styles.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.lightBlueColor,
      toolbarHeight: 120.h,
      title: Text(
        "explore".tr(),
        style: AppTextStyles.primaryColorW600Size32,
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,size: 16.sp,color: AppColors.primaryColor,)
        ),
      ],
    );
  }
}
