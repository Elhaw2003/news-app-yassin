import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilies/app_colors.dart';
import '../utilies/app_styles.dart';
class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hintText,  this.validator, this.keyboardType, this.onFieldSubmitted});
  final String hintText;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_outlined,color: AppColors.grey,size: 15.sp,),
        contentPadding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.h),
        filled: true,
        fillColor: AppColors.fillTextFieldColor,
        hintText: hintText,
        hintStyle: AppTextStyles.nameAndDateNews,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primaryColor.withOpacity(0.3),width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.enabledBorderTextFieldColor,width: 1)
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
