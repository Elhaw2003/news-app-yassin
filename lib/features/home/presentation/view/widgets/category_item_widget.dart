import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_styles.dart';
import '../../controller/categories/categories_cubit.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, required this.text, this.onTap, required this.index});
  final String text;
  final int index;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: BlocProvider.of<CategoriesCubit>(context).index == index
              ? AppColors.lightBlueColor
              : AppColors.white,
          borderRadius: BorderRadius.circular(56.sp),
          border: Border.all(color: AppColors.lightBlueColor.withOpacity(0.1), width: 1.sp),
        ),
        child: Text(
          text.tr(), // ✅ الآن `tr()` يتم استدعاؤه هنا مما يضمن التحديث الفوري
          style: AppTextStyles.categoryTextStyle,
        ),
      ),
    );
  }
}