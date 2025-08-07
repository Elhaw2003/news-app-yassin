import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
class AppTextStyles{
  static  TextStyle categoryTextStyle = GoogleFonts.inter(
     color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp
  );
  static  TextStyle titleNewsTextStyle = GoogleFonts.inter(
     color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 18.sp
  );
  static  TextStyle primaryColorW600Size32 = GoogleFonts.inter(
     color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 32.sp
  );
  static  TextStyle cancelTextStyle = GoogleFonts.schibstedGrotesk(
     color: AppColors.purple,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp
  );
  static  TextStyle nameAndDateNews = GoogleFonts.inter(
     color: AppColors.grey,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp
  );
  static  TextStyle descriptionStyle = GoogleFonts.merriweather(
     color: AppColors.primaryColor,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp
  );
}