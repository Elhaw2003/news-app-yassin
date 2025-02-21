import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilies/app_colors.dart';
import '../utilies/app_styles.dart';
class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hintText, required this.controller, this.validator, this.keyboardType, this.minLines =1, this.maxLines=1});
  final String hintText;
  final int minLines;
  final int maxLines;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      controller: controller,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.h),
        filled: true,
        fillColor: AppColors.white,
        hintText: hintText,
        hintStyle: AppTextStyles.titleNewsTextStyle.copyWith(fontSize: 12.sp),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: AppColors.borderTextFieldColor,width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.primaryColor,width: 1)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.red,width: 1)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.red,width: 1)
        ),
      ),
    );
  }
}
